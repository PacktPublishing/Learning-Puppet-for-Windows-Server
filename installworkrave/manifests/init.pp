# install workrave
class installworkrave {
  file { 'c:/windows/temp/workrave-win32-v1.10-installer.exe':
    source             => 'puppet:///modules/installworkrave/workrave-win32-v1.10-installer.exe',
    source_permissions => ignore,
  }
  package { 'Workrave 1.10':
    ensure          => installed,
    source          => 'c:/windows/temp/workrave-win32-v1.10-installer.exe',
    install_options => ['/VERYSILENT'],
    require         => File['c:/windows/temp/workrave-win32-v1.10-installer.exe'],
  }
}
