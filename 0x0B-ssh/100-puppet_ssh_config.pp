#!/usr/bin/env bash
#make changes on the configuration file using puppet

file_line { 'Turn off passwd auth':
  ensure => present,
  line   => '    PasswordAuthentication no',
  path   => '/etc/ssh/ssh_config',
}

file_line { 'Declare identity file':
  ensure => present,
  line   => '    IdentityFile ~/.ssh/school',
  path   => '/etc/ssh/ssh_config',
}