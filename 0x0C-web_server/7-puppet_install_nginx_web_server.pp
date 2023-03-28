package { 'nginx':
  ensure => installed,
}

service { 'nginx':
  ensure => running,
  enable => true,
}

file { '/etc/nginx/sites-available/default':
  ensure  => file,
  content => "
    server {
      listen 80;
      server_name localhost;
      location / {
        return 200 'Hello World!\n';
      }
      location /redirect_me {
        return 301 /new_path;
      }
      location /new_path {
        return 200 'This is the new path!\n';
      }
    }
  ",
  notify => Service['nginx'],
}


