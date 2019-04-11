# vim: sts=2 ts=2 sw=2 et ai
{% from "logrotate/map.jinja" import logrotate with context %}
{% set jobs = salt['pillar.get']('logrotate:jobs', {}) %}

include:
  - logrotate

{% for key, value in jobs.items() %}
  {% set contents = value.get('contents', False) %}
logrotate-{{ key }}:
  file.managed:
    - name: {{ logrotate.include_dir }}/{{ key.split("/")[-1] }}
    - user: {{ salt['pillar.get']('logrotate:config:user', logrotate.user) }}
    - group: {{ salt['pillar.get']('logrotate:config:group', logrotate.group) }}
    - mode: {{ salt['pillar.get']('logrotate:config:mode', '644') }}
    - require:
      - pkg: logrotate-pkg
    {% if contents %}
    - contents: {{ contents | yaml_encode }}
    {% else %}
    - source: salt://logrotate/templates/job.tmpl
    - template: jinja
    - context:
      {% if value is mapping %}
        path: {{ value.get('path', [key]) | json }}
        data: {{ value.get('config', []) | json }}
      {% else %}
        path: [ {{ key | json }} ]
        data: {{ value | json }}
      {% endif %}
    {% endif %}
{%- endfor -%}

