node 'puppet1','neo4j','logstash1','elasticsearch-3vrq' {
	file { '/tmp/hello':
		content => "Hello, wOrldddd\n",
	}
	include puppet
}
