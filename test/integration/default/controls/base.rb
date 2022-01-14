# frozen_string_literal: true

title 'Test logrotate installation'

control 'logrotate-pkg.pkg.installed' do
  title 'The required package should be installed'

  pkg =
    case platform[:family]
    when 'redhat', 'fedora'
      'cronie'
    else
      'logrotate'
    end

  describe package(pkg) do
    it { should be_installed }
  end
end

control 'logrotate-config.file.managed' do
  title 'Verify the configuration file'

  describe file('/etc/logrotate.conf') do
    it { should exist }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
    its('mode') { should cmp '0644' }
  end
end

control 'logrotate-directory.file.directory' do
  title 'Verify the `.d` directory'

  describe file('/etc/logrotate.d') do
    it { should be_directory }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
    its('mode') { should cmp '0755' }
  end
end

control 'logrotate.service.running' do
  title 'The service should be installed, enabled and running'

  service =
    case system.platform[:family]
    when 'arch'
      'cronie'
    when 'redhat', 'fedora'
      'crond'
    else
      'cron'
    end

  describe service(service) do
    it { should be_installed }
    it { should be_enabled }
    it { should be_running }
  end
end
