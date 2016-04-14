# install firefox using chocolatey
class chocofirefox {
  package { 'firefox':
    ensure   => installed,
    provider => 'chocolatey',
  }
}
