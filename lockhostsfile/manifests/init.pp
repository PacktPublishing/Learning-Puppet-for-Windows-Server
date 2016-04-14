# lock the hosts file
class lockhostsfile {
  file { 'C:/Windows/System32/drivers/etc/hosts':
    source            => 'puppet:///modules/lockhostsfile/hosts',
    source_permissions => 'ignore',
  }
}
