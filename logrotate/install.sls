# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "logrotate/map.jinja" import logrotate with context %}

{% set pkgs = [logrotate.pkg] if logrotate.pkg is string else logrotate.pkg %}
logrotate-pkg:
  pkg.installed:
    - pkgs: {{ pkgs | json }}
