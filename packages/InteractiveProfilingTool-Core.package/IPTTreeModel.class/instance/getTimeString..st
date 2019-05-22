time calculations
getTimeString: aMessageTally
	"Example return value: '10.0 % {3 ms}'"

	| absoluteTime relativeTime | 
	
	absoluteTime := self getAbsoluteTime: aMessageTally.
	relativeTime := self getRelativeTime: aMessageTally.

	^ (relativeTime printShowingDecimalPlaces: 1) asString , ' % {' , absoluteTime asString, ' ms}'. 