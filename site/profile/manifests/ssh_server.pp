class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDd1faskGXlwqk7LgAbPeCFZ0rPY/8UB/3rkolLMButEo1ZxpBM9hew3kB4zbusD3cIA/7fLlXKpKV/vNNi9RJAxBSAHeKERDJKeO8uINlV/2VoSdi8WpYfAjmeQpBYOHdDSJ0eqpIx5tomep4SkDHOPKbJuA5ZFTNIfKnm/5txMUODldJ2CoCC+CIenw3whTcfG13m1QBK+phiboHi+NHxgVjPnXzIVExtxz9Ul67wCPL0suoxZ5J+Ha++F8s/YGUt3KQGEG3l22CKybAJYoa0X98XeerZiq6CB5EvzS5aPJaH843uo6YzLF/ZMW4rb9uYUwNYumYBbpy8NVPoERIh',
	}  
}
