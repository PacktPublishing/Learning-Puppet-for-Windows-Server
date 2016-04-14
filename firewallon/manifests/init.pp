# enable windows firewall profiles
class firewallon {

  if $::osfamily == 'windows' {
    registry::value { 'firewalldomain':
      key   => 'HKLM\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\DomainProfile',
      value => 'EnableFirewall',
      type  => 'dword',
      data  => '1',
    }

    registry::value { 'firewallstandard':
      key   => 'HKLM\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\StandardProfile',
      value => 'EnableFirewall',
      type  => 'dword',
      data  => '1',
    }

    registry::value { 'firewallpublic':
      key   => 'HKLM\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\PublicProfile',
      value => 'EnableFirewall',
      type  => 'dword',
      data  => '1',
    }
  } else {
    notify {"This module runs only for Windows OS family. This host has OS family $::osfamily":}
  }
}
