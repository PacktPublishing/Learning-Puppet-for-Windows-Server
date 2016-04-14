# cleanup windows 
class cleanuppc {
  exec { 'deltemp':
      command => 'cmd.exe /C del /Q /F /S C:\Windows\Temp\*.*',
      path        => 'C:\Windows\System32',
      subscribe   => File['c:/windows/temp/helloworld'],
      refreshonly => true,
    }
}
