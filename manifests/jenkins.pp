exec {'wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -':
}->
exec {'sudo sh -c \'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list\'':
}->
exec {'sudo apt-get update:
}->
package {'jenkins':
  ensure => present,
}
