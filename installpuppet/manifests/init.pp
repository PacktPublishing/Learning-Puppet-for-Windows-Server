# install puppet agent 3.8.1
class installpuppet {
  file { 'c:/windows/temp/puppet-3.8.1-x64.msi':
    source             => 'puppet:///modules/installpuppet/puppet-3.8.1-x64.msi',
    source_permissions => ignore,
  }
  package { 'Puppet (64-bit)':
    ensure          => '3.8.1',
    source          => 'c:/windows/temp/puppet-3.8.1-x64.msi',
    install_options => ['/QUIET'],
#    install_options => ['/QUIET','/NORESTART'],
    require         => File['c:/windows/temp/puppet-3.8.1-x64.msi'],
  }
  if $::puppetversion == '3.8.1x' {
    exec { 'uninstallPuppet3.7.4':
      command => 'MsiExec.exe /Q /X{9241D505-58E0-47CF-97A1-5E195F02FA94}',
      path        => 'C:\Windows\System32',
      require     => Package['Puppet (64-bit)'],
    }
  }
}
