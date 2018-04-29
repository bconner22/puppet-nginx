package {'nginx':
  ensure => installed,
}
if !defined('$indexhtml') {
  $indexhtml = "Automation for the people"
}
file {'/var/www/html/index.nginx-debian.html':
  ensure  => file,
  content => "${indexhtml}",
}~>
service {'nginx':
  ensure => running,
}