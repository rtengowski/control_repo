class test {
  file {'/opt/test':
    ensure => directory,
  }
  
  file{'/opt/test/test.txt':
    ensure => file,
    content => 'this is a test',
  }
}
