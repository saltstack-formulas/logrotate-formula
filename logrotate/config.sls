{% from "logrotate/map.jinja" import logrotate with context %}

include:
  - logrotate

{% set ns = namespace(hourly=False) %}
{% set jobs = salt['config.get']('logrotate:jobs', {}) %}
{% for key, value in logrotate.jobs.items() %}
{% set contents = value.get('contents', False) %}
  {% if 'hourly' in (contents or value.config) %}
    {% set ns.hourly = True %}
    {% break %}
  {% endif %}
{% endfor %}

logrotate-config:
  file.managed:
    - name: {{ logrotate.conf_file }}
    - source: salt://logrotate/templates/logrotate.conf.tmpl
    - template: jinja
    - user: {{ salt['config.get']('logrotate:config:user', logrotate.user) }}
    - group: {{ salt['config.get']('logrotate:config:group', logrotate.group) }}
    - mode: {{ salt['config.get']('logrotate:config:mode', '0644') }}
    - context:
        logrotate: {{ logrotate|tojson }}

logrotate-directory:
  file.directory:
    - name: {{ logrotate.include_dir }}
    - user: {{ salt['config.get']('logrotate:config:user', logrotate.user) }}
    - group: {{ salt['config.get']('logrotate:config:group', logrotate.group) }}
    - mode: '0755'
    - makedirs: True

{%- if ns.hourly %}
logrotate-hourly-config:
  file.managed:
    - name: {{ logrotate.hourly_conf_file }}
    - user: {{ salt['config.get']('logrotate:config:user', logrotate.user) }}
    - group: {{ salt['config.get']('logrotate:config:group', logrotate.group) }}
    - mode: {{ salt['config.get']('logrotate:config:mode', '0644') }}
    - contents:
      - include {{ logrotate.hourly_include_dir }}

logrotate-hourly-directory:
  file.directory:
    - name: {{ logrotate.hourly_include_dir }}
    - user: {{ logrotate.user }}
    - group: {{ logrotate.group }}
    - mode: '0755'
    - makedirs: True

logrotate-hourly-cron:
  file.managed:
    - name: "/etc/cron.hourly/logrotate"
    - source: salt://logrotate/templates/logrotate.hourly.tmpl
    - template: jinja
    - user: {{ salt['config.get']('logrotate:config:user', logrotate.user) }}
    - group: {{ salt['config.get']('logrotate:config:group', logrotate.group) }}
    - mode: '0775'
    - context:
        logrotate: {{ logrotate|tojson }}

{%- endif %}
