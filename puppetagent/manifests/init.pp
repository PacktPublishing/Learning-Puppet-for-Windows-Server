# install puppet agent using chocolatey
class puppetagent {
  package { 'puppet':
    ensure          => '3.8.1',
    install_options => ['-override', '-installArgs', '"', '/QUIET', '/NORESTART', '"'],
    provider        => 'chocolatey',
  }

  if $::puppetversion == '3.8.1' {
    exec { 'uninstallPuppet3.7.4':
      command => 'MsiExec.exe /Q /X{9241D505-58E0-47CF-97A1-5E195F02FA94}',
      path        => 'C:\Windows\System32',
    }
  }
}
