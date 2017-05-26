tests
testPrintString

	self assert: (IPAddress fromString: '192.168.0.1') printString equals: '192.168.0.1'