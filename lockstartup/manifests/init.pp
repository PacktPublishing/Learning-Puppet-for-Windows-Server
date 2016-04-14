# locks startup folder
class lockstartup {

  $array_users = split($::users, ',')

# this type locks the user startup folder
  define winstartupfolder {
    $user = $name
    acl {"c:/Users/${user}/AppData/Roaming/Microsoft/Windows/Start Menu/Programs/Startup":
      purge                      => true,
      permissions                => [
        { identity => 'SYSTEM', rights => ['full'], child_types => 'all' },
        { identity => 'ADMINISTRATORS', rights => ['full'], child_types => 'all' },
        { identity => 'Authenticated Users', rights => ['read','execute'] },
      ],
      inherit_parent_permissions => false,
    }
  }

  winstartupfolder { $array_users:; }
}

