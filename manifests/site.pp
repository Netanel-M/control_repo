node default {
  file {'/root/README':
    ensure => file,
    content => "This is a readme",
    owner => 'root',
  }
  
  package {'flatpak.x86_64':
            ensure => present,
  }
    
  package {'httpd':
            ensure => present,
  }
  
  service {'httpd':
    enable => true,
    ensure => running,
  }
}
