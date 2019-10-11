# frozen_string_literal: true

title 'Test logrotate jobs configuration'

describe file('/etc/logrotate.d/error') do
  it { should be_file }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
  its('mode') { should cmp '0644' }
  its('content') { should include '/tmp/var/log/mysql/error' }
  its('content') { should include 'weekly' }
  its('content') { should include 'missingok' }
  its('content') { should include 'rotate 52' }
  its('content') { should include 'compress' }
  its('content') { should include 'delaycompress' }
  its('content') { should include 'notifempty' }
  its('content') { should include 'create 640 root adm' }
  its('content') { should include 'sharedscripts' }
end

describe file('/etc/logrotate.d/mysql') do
  it { should be_file }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
  its('mode') { should cmp '0644' }
  its('content') { should include '/tmp/var/log/mysql/*.log' }
  its('content') { should include 'weekly' }
  its('content') { should include 'missingok' }
  its('content') { should include 'rotate 52' }
  its('content') { should include 'compress' }
  its('content') { should include 'delaycompress' }
  its('content') { should include 'notifempty' }
  its('content') { should include 'create 640 root adm' }
  its('content') { should include 'sharedscripts' }
end

describe file('/etc/logrotate.d/syslog') do
  it { should be_file }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
  its('mode') { should cmp '0644' }
  its('content') { should include '/var/log/cron' }
  its('content') { should include '/var/log/maillog' }
  its('content') { should include '/var/log/messages' }
  its('content') { should include '/var/log/secure' }
  its('content') { should include '/var/log/spooler' }
  its('content') { should include '/var/log/slapd.log' }
  its('content') { should include 'sharedscripts' }
  its('content') { should include 'postrotate' }
  its('content') { should include 'sharedscripts' }
end

describe file('/etc/logrotate.d/nginx') do
  it { should be_file }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
  its('mode') { should cmp '0644' }
  its('content') { should include '/var/log/nginx/*.log' }
  its('content') { should include 'weekly' }
  its('content') { should include 'missingok' }
  its('content') { should include 'compress' }
  its('content') { should include 'delaycompress' }
  its('content') { should include 'prerotate' }
  its('content') do
    should include 'if [ -d /etc/logrotate.d/httpd-prerotate ]; then \\'
  end
  its('content') { should include '    run-parts /etc/logrotate.d/httpd-prerotate; \\' }
  its('content') { should include '  fi \\' }
  its('content') { should include 'postrotate' }
  its('content') { should include '  invoke-rc.d nginx rotate >/dev/null 2>&1' }
end
