node 'puppet1','neo4j','logstash1' {
	file { '/tmp/hello':
		content => "Hello, wOrldddd\n",
	}
	include puppet
}
