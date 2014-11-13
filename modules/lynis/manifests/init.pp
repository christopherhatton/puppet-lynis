class lynis {

  vcsrepo { '/usr/share/lynis':
    ensure   => present,
    provider => git,
    source   => 'https://github.com/CISOfy/Lynis.git'
  }

  file { '/usr/share/lynis':
    ensure => present,
    mode   => '0755'
  }

  file { '/usr/bin/lynis':
    ensure => 'link',
    target => '/usr/share/lynis/lynis'
  }

}
