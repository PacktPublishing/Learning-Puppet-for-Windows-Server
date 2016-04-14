# Create a local admin with unique password
class localadmin {
  $pass = hashpass()

  user { 'Administrator':
    name     => 'lcladmin',
    password => $pass,
    groups   => 'Administrators',
  }
}
