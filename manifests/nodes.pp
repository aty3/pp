node 'puppet1' {
	file { '/tmp/hello':
		content => "Hello, wOrld\n",
	}
}
