instance creation
fromDictionary: aDictionary

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