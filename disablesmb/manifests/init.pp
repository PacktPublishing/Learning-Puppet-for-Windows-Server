class disablesmb  {

  service { 'Browser':
    ensure  => stopped,
    enable  => false,
  }

  service { 'LanmanServer':
    ensure  => stopped,
    enable  => false,
    require => Service['Browser'],
  }
}
