class chocolatey_sw (
  $command  = $chocolatey_sw::params::command,
  $creates  = $chocolatey_sw::params::creates,
  $provider = $chocolatey_sw::params::provider,
  $timeout  = $chocolatey_sw::params::timeout
) inherits chocolatey_sw::params {

  class { 'chocolatey_sw::install':
    command  => $command,
    creates  => $creates,
    provider => $provider,
    timeout  => $timeout,
  }

  anchor { 'chocolatey_sw::begin': ; }
    -> Class['chocolatey_sw::install']
    -> anchor { 'chocolatey_sw::end': ; }
}
