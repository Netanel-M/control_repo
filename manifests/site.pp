node default {
  file {'/root/README':
    ensure => file,
    content => "This is a readme",
    owner => 'root',
  }
  
  package {'flatpak.x86_64':
            ensure => present,
  }
}
