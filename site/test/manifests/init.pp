class test {
  file {'/opt/test':
    ensure => directory,
  }
  
  file{'/opt/test/test.txt':
    ensure => file,
    content => 'this is a test',
  }
  
  vcsrepo { '/opt/test/repo':
    ensure   => latest,
    provider => git,
    source   => 'git://github.com/rtengowski/test_repo.git',
  }
}
