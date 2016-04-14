# start necessary services
class startservices  {

# start Trendmicro antivirus
  service { 'Amsp':
    ensure  => running,
    enable  => true,
  }

  service { 'Platinum Host Service':
    ensure  => running,
    enable  => true,
  }

# start Windows Firewall
  service { 'MpsSvc':
    ensure  => running,
    enable  => true,
  }
}
