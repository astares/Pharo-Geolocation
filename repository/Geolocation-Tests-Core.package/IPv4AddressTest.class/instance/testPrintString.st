tests
testPrintString

	self assert: (IPv4Address fromString: '192.168.0.1') printString equals: '192.168.0.1'