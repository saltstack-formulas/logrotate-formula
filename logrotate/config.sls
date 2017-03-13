{% from "logrotate/map.jinja" import logrotate with context %}

include:
  - logrotate

logrotate-config:
  file.managed:
    - name: {{ logrotate.conf_file }}
    - source: salt://logrotate/templates/logrotate.conf.tmpl
    - template: jinja
    - user: {{ salt['pillar.get']('logrotate:config:user', logrotate.user) }}
    - group: {{ salt['pillar.get']('logrotate:config:group', logrotate.group) }}
    - mode: {{ salt['pillar.get']('logrotate:config:mode', '644') }}

logrotate-directory:
  file.directory:
    - name: {{ logrotate.include_dir }}
    - user: {{ salt['pillar.get']('logrotate:config:user', logrotate.user) }}
    - group: {{ salt['pillar.get']('logrotate:config:group', logrotate.group) }}
    - mode: 755
    - makedirs: True

