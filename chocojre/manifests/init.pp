# install java runtime using chocolatey
class chocojre {
  package { 'javaruntime':
    ensure   => latest,
    provider => 'chocolatey',
  }

  package { 'Java 7 Update 75':
    ensure   => absent,
    require  => Package['javaruntime'],
  }

  package { 'Java 7 Update 75 (64-bit)':
    ensure   => absent,
    require  => Package['javaruntime'],
  }
}
