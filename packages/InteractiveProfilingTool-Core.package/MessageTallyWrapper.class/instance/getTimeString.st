information extraction
getTimeString
	"Example return value: '10.0 % {3 ms}'"

	| absoluteTime relativeTime | 
	
	absoluteTime := self getAbsoluteTime.
	relativeTime := self getRelativeTime.

	^ (relativeTime printShowingDecimalPlaces: 1) asString , ' % {' , absoluteTime asString, ' ms}'. 