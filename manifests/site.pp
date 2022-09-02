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
            ensure => absent,
  }
}

node master.puppet.vm {
  include role::master_server
}
