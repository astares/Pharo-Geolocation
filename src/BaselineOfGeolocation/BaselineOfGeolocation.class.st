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
BaselineOfGeolocation >> baseline: arg1 [

	<baseline>
	arg1 for: #common do: [
		arg1
			package: 'Geolocation-Core';
			package: 'Geolocation-Core-Tests'
			with: [ arg1 requires: #( 'Geolocation-Core' ) ];
			group: 'Core' with: #( 'Geolocation-Core' );
			group: 'Tests' with: #( 'Geolocation-Core-Tests' );
			group: 'CI' with: #( 'Tests' );
			group: 'all' with: #( 'Core' 'Tests' );
			group: 'default' with: #( 'all' ) ]
]
