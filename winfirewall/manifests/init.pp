# windows firewall enable and add rules
class winfirewall {

  if $::osfamily == 'windows' {
    registry::value { 'firewalldomain':
      key     => 'HKLM\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\DomainProfile',
      value   => 'EnableFirewall',
      type    => 'dword',
      data    => '1',
      notify  => Service['MpsSvc'],
    }

    registry::value { 'firewallstandard':
      key     => 'HKLM\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\StandardProfile',
      value   => 'EnableFirewall',
      type    => 'dword',
      data    => '1',
      notify  => Service['MpsSvc'],
    }

    registry::value { 'firewallpublic':
      key     => 'HKLM\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\PublicProfile',
      value   => 'EnableFirewall',
      type    => 'dword',
      data    => '1',
      notify  => Service['MpsSvc'],
    }

# start Windows Firewall - Already defined in startservices so we will not define here
#    service { 'MpsSvc':
#      ensure  => running,
#      enable  => true,
#    }

   exec { 'disableRDP':
     command     => 'netsh advfirewall firewall set rule name="Remote Desktop (TCP-In)" new enable=no',
     path        => 'C:\Windows\System32',
   }

   exec { 'disableSMB':
     command     => 'netsh advfirewall firewall set rule name="File and Printer Sharing (SMB-In)" new enable=no',
     path        => 'C:\Windows\System32',
   }

  } else {
    notify {"This module runs only for Windows OS family. This host has OS family $::osfamily":}
  }
}
