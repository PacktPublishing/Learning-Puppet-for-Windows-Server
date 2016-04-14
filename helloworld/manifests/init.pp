# helloworld class test
class helloworld {
  file { 'c:/windows/temp/hello.txt':
    content            => template('helloworld/hello.erb'),
    source_permissions => 'ignore',
  }
  file { 'c:/windows/temp/helloworld':
    ensure             => 'directory',
    source_permissions => 'ignore',
  }
}
