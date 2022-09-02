node default {
  file {'/root/README':
    ensure => file,
    content => "This is a readme",
    owner => 'root',
  }
  
  package {'vim':
            ensure => present,
  }
}
