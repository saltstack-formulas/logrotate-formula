{% from "logrotate/map.jinja" import logrotate with context %}

logrotate:
  pkg.installed:
    - name: {{ logrotate.pkg|json }}
  service.running:
    - name: {{ logrotate.service }}
    - enable: True
    - reload: True
