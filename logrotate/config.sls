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

logrotate_config:
  file.managed:
    - name: {{ logrotate.conf_file }}
    - source: salt://logrotate/files/{{ salt['grains.get']('os_family') }}/logrotate.conf
    - template: jinja
    - user: {{ salt['pillar.get']('logrotate:config:user', logrotate.user) }}
    - group: {{ salt['pillar.get']('logrotate:config:group', logrotate.group) }}
    - mode: {{ salt['pillar.get']('logrotate:config:mode', '644') }}
    - require:
      - pkg: logrotate
    - watch_in:
      - service: {{ logrotate.service }}


