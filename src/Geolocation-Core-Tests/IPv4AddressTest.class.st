"
Unit test for IP Addresses
"
Class {
	#name : #IPv4AddressTest,
	#superclass : #TestCase,
	#category : #'Geolocation-Core-Tests-Model'
}

{ #category : #tests }
IPv4AddressTest >> testEqual [

	self assert: IPv4Address localhost equals: IPv4Address localhost
]

{ #category : #tests }
IPv4AddressTest >> testLocalhost [

	|ip|
	ip := IPv4Address localhost.
	self
		assert: ip isLocalhost;
		assert: ip printString equals: '127.0.0.1'
]

{ #category : #tests }
IPv4AddressTest >> testPrintString [

	self assert: (IPv4Address fromString: '192.168.0.1') printString equals: '192.168.0.1'
]
