# ensure firewall is running and add rules
class firewallrules {
  windows_firewall::exception { 'WINRM':
    ensure       => present,
    direction    => 'in',
    action       => 'allow',
    enabled      => 'yes',
    protocol     => 'TCP',
    local_port   => '3389',
    remote_ip    => '10.10.10.20,10.10.10.21',
    display_name => 'Windows RDP Rule allow ips',
    description  => 'Inbound rule for Windows RDP allow [TCP 3389]',
  }
}
