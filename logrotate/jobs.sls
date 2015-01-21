# vim: sts=2 ts=2 sw=2 et ai
{% from "logrotate/map.jinja" import logrotate with context %}

include:
  - logrotate

logrotate_directory:
  file.directory:
    - name: {{ logrotate.include_dir }}
    - user: {{ salt['pillar.get']('logrotate:config:user', logrotate.user) }} 
    - group: {{ salt['pillar.get']('logrotate:config:group', logrotate.group) }} 
    - mode: 755
    - makedirs: True
    - require:
      - pkg: logrotate

{% for key,value in logrotate.jobs.iteritems() %}
{{key}}:
  file.managed:
    - name: {{ logrotate.include_dir }}/{{ key.split("/")[-1] }}
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
      path: {{ key }}
      data: {{ value }}
{%- endfor -%}
