"
A geolocation
"
Class {
	#name : #Geolocation,
	#superclass : #Object,
	#instVars : [
		'countryName',
		'zipCode',
		'regionCode',
		'regionName',
		'city',
		'longitude',
		'latitude',
		'metroCode',
		'countryCode',
		'timeZone'
	],
	#category : 'Geolocation-Core-Model'
}

{ #category : #'instance creation' }
Geolocation class >> fromDictionary: aDictionary [

	^ self new
		  countryName: (aDictionary at: 'country_name' ifAbsent: '');
		  zipCode: (aDictionary at: 'zip_code' ifAbsent: '');
		  regionCode: (aDictionary at: 'region_code' ifAbsent: '');
		  regionCode: (aDictionary at: 'region_name' ifAbsent: '');
		  city: (aDictionary at: 'city' ifAbsent: '');
		  longitude: (aDictionary at: 'longitude' ifAbsent: '');
		  latitude: (aDictionary at: 'latitude' ifAbsent: '');
		  metroCode: (aDictionary at: 'metro_code' ifAbsent: '');
		  countryCode: (aDictionary at: 'country_code' ifAbsent: '');
		  timeZone: (aDictionary at: 'time_zone' ifAbsent: '');
		  yourself
]

{ #category : #accessing }
Geolocation >> city [

	^ city
]

{ #category : #accessing }
Geolocation >> city: anObject [
	city := anObject
]

{ #category : #accessing }
Geolocation >> countryCode [
	^ countryCode
]

{ #category : #accessing }
Geolocation >> countryCode: anObject [
	countryCode := anObject
]

{ #category : #accessing }
Geolocation >> countryName [

	^ countryName
]

{ #category : #accessing }
Geolocation >> countryName: anObject [

	countryName := anObject
]

{ #category : #accessing }
Geolocation >> latitude [

	^ latitude
]

{ #category : #accessing }
Geolocation >> latitude: anObject [

	latitude := anObject
]

{ #category : #accessing }
Geolocation >> longitude [

	^ longitude
]

{ #category : #accessing }
Geolocation >> longitude: anObject [

	longitude := anObject
]

{ #category : #accessing }
Geolocation >> metroCode [

	^ metroCode
]

{ #category : #accessing }
Geolocation >> metroCode: anObject [

	metroCode := anObject
]

{ #category : #accessing }
Geolocation >> regionCode [

	^ regionCode
]

{ #category : #accessing }
Geolocation >> regionCode: anObject [

	regionCode := anObject
]

{ #category : #accessing }
Geolocation >> regionName [

	^ regionName
]

{ #category : #accessing }
Geolocation >> regionName: anObject [

	regionName := anObject
]

{ #category : #accessing }
Geolocation >> timeZone [

	^ timeZone
]

{ #category : #accessing }
Geolocation >> timeZone: anObject [

	timeZone := anObject
]

{ #category : #accessing }
Geolocation >> zipCode [

	^ zipCode
]

{ #category : #accessing }
Geolocation >> zipCode: anObject [

	zipCode := anObject
]
