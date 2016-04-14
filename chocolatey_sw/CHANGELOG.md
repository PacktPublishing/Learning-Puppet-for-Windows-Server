## 2015-02-18 - Release 0.9.3

Fix module metadata.

#### Bugfixes

- Fixed module metadata to avoid problems on Open Source Puppet.

## 2014-12-08 - Release 0.9.2

Fix file/directory permissions.

#### Bugfixes

- Fix PF module archive file/directory permissions.

## 2014-09-09 - Release 0.9.1

### Summary

Increase install timeout (from default 300 secs to 600 secs).
Fix install problems on buggy PowerShells (i.e. clean Windows 7).

#### Features

- Increase exec timeout on installer from 300 secs to 600 secs.
  Make timeout configurable.

#### Bugfixes

- Redirect all output to $null to avoid installation problems with
  old buggy PowerShells (i.e. on clean Windows 7). See
  http://www.leeholmes.com/blog/2008/07/30/workaround-the-os-handles-position-is-not-what-filestream-expected/

## 2014-09-04 - Release 0.9.0

### Summary

Initial release.
