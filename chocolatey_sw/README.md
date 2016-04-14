# Puppet module for Chocolatey installation

This module installs [Chocolatey](http://chocolatey.org/),
apt-get like Windows package manager. Package provider for Chocolatey
is part of another module [rismoney/chocolatey](https://forge.puppetlabs.com/rismoney/chocolatey).

### Requirements

Module has been tested on:

* Puppet 3.6
* OS:
  * Windows Server 2008  SP1

Required modules:

* stdlib (https://github.com/puppetlabs/puppetlabs-stdlib)
* powershell (https://github.com/puppetlabs/puppetlabs-powershell)

# Quick Start

```puppet
include chocolatey_sw
```

Full configuration options:

```puppet
class { 'chocolatey_sw':
  command  => 'iex ...',                      # command to install Chocolatey
  creates  => ['C:\ProgramData\chocolatey'],  # check for install directories
  provider => powershell,                     # command Exec provider
}
```

# Example

```puppet
include chocolatey_sw

package { 'cygwin':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}
```

***

CERIT Scientific Cloud, <support@cerit-sc.cz>
