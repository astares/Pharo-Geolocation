tests
testLocalhost

	|ip|
	ip := IPv4Address localhost.
	self 
		assert: ip isLocalhost;
		assert: ip printString equals: '127.0.0.1'