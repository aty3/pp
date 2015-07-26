class puppet {
	file { '/usr/local/bin/papply.sh':
		source => 'puppet:///modules/puppet/papply.sh',
		mode =>	'0755'
		}
	file { '/usr/local/bin/pull-updates':
		source => 'puppet:///modules/puppet/pull-updates.sh',
		mode => '0755'
		}
	file { '/home/attila_csender/.ssh/id_rsa':
		source => 'puppet:///modules/puppet/attila_csender.priv',
		owner => 'attila_csender',
		mode => '0600'
		}
	cron { 'run-puppet':
		ensure => 'present',
		user => 'attila_csender',
		command => '/usr/local/bin/pull-updates',
		minute => '*/10',
		hour => '*'
		}
}
