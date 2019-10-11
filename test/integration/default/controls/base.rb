# frozen_string_literal: true

title 'Test logrotate installation'

case os[:name]
when 'redhat', 'centos', 'fedora', 'amazon'
  pkg = 'cronie'
else
  pkg = 'logrotate'
end
describe package(pkg) do
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

case os[:name]
when 'redhat', 'centos', 'fedora', 'amazon'
  service = 'crond'
else
  service = 'cron'
end

describe service(service) do
  it { should be_installed }
  it { should be_enabled }
  it { should be_running }
end
