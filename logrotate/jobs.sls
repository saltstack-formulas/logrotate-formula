# vim: sts=2 ts=2 sw=2 et ai
{% from "logrotate/map.jinja" import logrotate with context %}
{% set jobs = salt['pillar.get']('logrotate:jobs') %}

include:
  - logrotate

{% for job_name,value in jobs.iteritems() %}
{{ value.path }}:
  file.managed:
    - name: {{ logrotate.include_dir }}/{{ job_name }}
    - source: salt://logrotate/templates/job.tmpl
    - template: jinja
    - user: {{ salt['pillar.get']('logrotate:config:user', logrotate.user) }}
    - group: {{ salt['pillar.get']('logrotate:config:group', logrotate.group) }}
    - mode: {{ salt['pillar.get']('logrotate:config:mode', '644') }}
    - require:
      - pkg: logrotate
    - watch_in:
      - service: {{ logrotate.service }}
    - context:
      path: {{ value.path }}
      data: {{ value.data }}
{%- endfor -%}
