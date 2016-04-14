class chocolatey_sw::install (
  $command,
  $creates,
  $provider,
  $timeout
) {
  exec { 'install-chocolatey':
    command  => $command,
    creates  => $creates,
    provider => $provider,
    timeout  => $timeout,
  }
}
