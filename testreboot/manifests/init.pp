# test example for reboot
class testreboot {
  file { 'c:/windows/temp/testreboot.txt':
    content            => 'Testing reboot',
    source_permissions => ignore,
  }
  reboot { 'restartexample':
    subscribe          => File['c:/windows/temp/testreboot.txt'],
  }
}
