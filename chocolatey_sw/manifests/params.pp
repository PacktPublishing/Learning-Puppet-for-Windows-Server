class chocolatey_sw::params {
  case $::operatingsystem{
    windows: {
      $command = '( iex ((new-object net.webclient).DownloadString("https://chocolatey.org/install.ps1")) ) >$null 2>&1'
      $creates = ['C:\Chocolatey','C:\ProgramData\chocolatey']
      $provider = powershell
      $timeout = 600
    }

    default: {
      fail("Unsupported OS: ${::operatingsystem}")
    }
  }
}
