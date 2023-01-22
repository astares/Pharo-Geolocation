"
IPv4 internet address
"
Class {
	#name : #IPv4Address,
	#superclass : #IPAddress,
	#category : #'Geolocation-Core-Model'
}

{ #category : #accessing }
IPv4Address class >> broadcast [

	^self fromString: '255.255.255.255'
]

{ #category : #examples }
IPv4Address class >> exampleLocalhost [

	self localhost inspect
]

{ #category : #examples }
IPv4Address class >> examplePharo [

	(self forName: 'pharo.org') geolocation inspect
]

{ #category : #'instance creation' }
IPv4Address class >> forName: aString [

	^(self new)
		bytes: (NetNameResolver addressForName: aString timeout: 30);
		yourself
]

{ #category : #'instance creation' }
IPv4Address class >> fromString: aString [
	|c bytes |
	c := aString substrings: '.'.
	bytes := ByteArray withAll: (c collect: [:each | each asNumber ]).
	^self new
		bytes: bytes
]

{ #category : #accessing }
IPv4Address class >> localhost [

	^self fromString: '127.0.0.1'
]

{ #category : #accessing }
IPv4Address >> geolocation [
	^Geolocation fromDictionary: (STON fromString: (ZnEasy get: 'http://freegeoip.net/json/' , self printString) contents)
]

{ #category : #testing }
IPv4Address >> isLocalhost [

	^self printString = '127.0.0.1'
]

{ #category : #printing }
IPv4Address >> printOn: aStream [

	bytes
		do: [ :each | each printOn: aStream ]
		separatedBy: [ aStream nextPut: $. ]
]
