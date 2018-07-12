# encoding: utf-8

title 'Test logrotate installation'

describe package('logrotate') do
  it { should be_installed }
end

describe file('/etc/logrotate.conf') do
  it { should exist }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
  its('mode') { should cmp '0644' }
end

describe file('/etc/logrotate.d') do
  it { should be_directory }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
  its('mode') { should cmp '0755' }
end

describe service('cron') do
  it { should be_installed }
  it { should be_enabled }
  it { should be_running }
end
