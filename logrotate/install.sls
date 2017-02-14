# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "logrotate/map.jinja" import logrotate with context %}

logrotate-pkg:
  pkg.installed:
    - name: {{ logrotate.pkg }}
