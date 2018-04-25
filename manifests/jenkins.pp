exec {'wget dat key':
  command => '/usr/bin/wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -',
}->
exec {'/usr/bin/sudo sh -c \'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list\'':
}->
exec {'/usr/bin/sudo apt-get update':
}->
exec {'usr/bin/sudo apt-get install jenkins':
}
