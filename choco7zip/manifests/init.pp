# install 7zip using chocolatey
class choco7zip {
  package { '7zip':
    ensure   => latest,
    provider => 'chocolatey',
  }
}
