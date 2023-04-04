#!/usr/bin/env bash
# 2-puppet_custom_http_response_header.pp

# Install the nginx package
package { 'nginx':
  ensure => 'installed',
}

# Create a custom HTTP header response
file { '/etc/nginx/conf.d/custom-header.conf':
  content => "add_header X-Served-By ${::hostname};",
  require => Package['nginx'],
  notify  => Service['nginx'],
}

# Restart the nginx service to apply the new configuration
service { 'nginx':
  ensure => 'running',
  enable => true,
}
