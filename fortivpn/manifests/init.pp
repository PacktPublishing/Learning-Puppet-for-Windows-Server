# Add fortivpn connection details to registry
class fortivpn {
  file { 'c:/windows/temp/fortissl.reg':
    content            => template('fortivpn/forti.erb'),
    source_permissions => 'ignore',
  }

  exec { 'addregistry':
    command     => 'Regedit.exe /s C:\\Windows\\Temp\\fortissl.reg',
    path        => 'C:/Windows',
    subscribe   => File['c:/windows/temp/fortissl.reg'],
    refreshonly => true,
  }
}

