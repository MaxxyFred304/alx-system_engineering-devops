file { '/home/user/.ssh/config':
  ensure => 'present',
  owner => 'user',
  group => 'user',
  mode => '0600',
  content => "Host example.com\n  IdentityFile /home/user/.ssh/school\n  PasswordAuthentication no\n",
}

