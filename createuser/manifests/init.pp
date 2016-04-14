# creates puppetuser
class createuser {
  user { 'testuser':
    ensure   => 'present',
    name     => 'puppetuser',
    comment  => 'Puppet User',
    groups   => [ 'Administrators', 'Users' ],
    password => 'Qwer1234',
  }
}
