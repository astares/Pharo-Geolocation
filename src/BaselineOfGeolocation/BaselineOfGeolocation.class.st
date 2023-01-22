"
A baseline for Geolocation implementation for Pharo.

See [https://github.com/astares/Pharo-Geolocation](https://github.com/astares/Pharo-Geolocation)
"
Class {
	#name : #BaselineOfGeolocation,
	#superclass : #BaselineOf,
	#category : #BaselineOfGeolocation
}

{ #category : #baselines }
BaselineOfGeolocation >> baseline: spec [

	<baseline>
	spec
		for: #common do: [
			"Packages"
			spec
				package: 'Geolocation-Core';
				package: 'Geolocation-Core-Tests' with: [ spec requires: #('Geolocation-Core') ].

			"Groups"
			spec
				group: 'Core' with: #('Geolocation-Core');
				group: 'Tests' with: #('Geolocation-Core-Tests');
				group: 'CI' with: #('Tests');
				group: 'all' with: #('Core' 'Tests');
				group: 'default' with: #('all') ]
]
