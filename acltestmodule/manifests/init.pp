# creates testy user and makes ACL assignments
class acltestmodule {
  user { 'testy':
    ensure      => 'present',
    name        => 'testy',
    comment     => 'testy user for ACL',
    groups      => [ 'Users' ],
    password    => 'Qwer1234',
  }

  acl { 'C:\testacl':
    purge => true,
    permissions => [
     { identity => 'SYSTEM', rights => ['full'], child_types => 'all' },
     { identity => 'Administrators', rights => ['full'] },
#     { identity => 'Authenticated Users', rights => ['read','execute'] },
#     { identity => 'testy', rights   => ['execute','read'] },
    ],
    inherit_parent_permissions => false,
    require     => User['testy'],
  }

}

