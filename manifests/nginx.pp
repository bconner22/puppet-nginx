package {'nginx':
  ensure => installed,
}
file {'/var/www/html/index.nginx-debian.html':
  ensure  => file,
  content => 'Automation for the people',
}~>
service {'nginx':
  ensure => running,
}
