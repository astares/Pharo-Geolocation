printing
printOn: aStream

	bytes
		do: [ :each | each printOn: aStream ]
		separatedBy: [ aStream nextPut: $. ].