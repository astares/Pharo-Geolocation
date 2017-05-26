instance creation
forName: aString

	^(self new) 
		bytes: (NetNameResolver addressForName: aString timeout: 30);
		yourself