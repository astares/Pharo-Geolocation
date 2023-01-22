"
An IP address
"
Class {
	#name : #IPAddress,
	#superclass : #Object,
	#instVars : [
		'bytes'
	],
	#category : #'Geolocation-Core-Model'
}

{ #category : #testing }
IPAddress class >> isAbstract [

	^ self == IPAddress
]

{ #category : #comparing }
IPAddress >> = anotherIPAddress [

	^(self species = anotherIPAddress species)
		and: [ self printString = anotherIPAddress printString ]
]

{ #category : #'private - accessing' }
IPAddress >> bytes: aCollection [

	bytes := aCollection
]
