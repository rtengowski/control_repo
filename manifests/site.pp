node default {
  file {'/root/README':
    ensure  => file,
    content => 'This is a readme',
    owner   => 'root',
  }
  file {'/root/TEST':
    owner   => 'root',
    content => 'testing testing testing\n',
    ensure  => file,
  }
}
