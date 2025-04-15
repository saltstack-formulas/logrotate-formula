# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "logrotate/map.jinja" import logrotate with context %}

{%- if logrotate.service is not none %}

include:
  - logrotate.config
  - logrotate.install

logrotate:
  service.running:
    - name: {{ logrotate.service }}
    - enable: True
    - require:
      - pkg: logrotate-pkg
      - file: logrotate-config
      - file: logrotate-directory

{%- endif %}
