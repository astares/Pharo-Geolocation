tests
testLocalhost

	|ip|
	ip := IPAddress localhost.
	self 
		assert: ip isLocalhost;
		assert: ip printString equals: '127.0.0.1'