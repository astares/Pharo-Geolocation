instance creation
fromString: aString
	|c bytes |
	c := aString substrings: #($.).
	bytes := ByteArray withAll: (c collect: [:each | each asNumber ]).
	^self new 
		bytes: bytes