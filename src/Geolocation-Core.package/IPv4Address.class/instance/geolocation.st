accessing
geolocation
	^Geolocation fromDictionary: (STON fromString: (ZnEasy get: 'http://freegeoip.net/json/' , self printString) contents)