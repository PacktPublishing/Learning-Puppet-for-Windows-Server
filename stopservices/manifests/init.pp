# stop unnecessary services
class stopservices  {

# stop SMB
  service { 'Browser':
    ensure  => stopped,
    enable  => false,
  }

  service { 'LanmanServer':
    ensure  => stopped,
    enable  => false,
    require => Service['Browser'],
  }

# stop Remote Desktop Service
  service { 'UmRdpService':
    ensure  => stopped,
    enable  => false,
  }

  service { 'TermService':
    ensure  => stopped,
    enable  => false,
    require => Service['UmRdpService'],
  }
}

