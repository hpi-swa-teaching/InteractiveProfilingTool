information extraction
getTimeString: aTotalTimeValue
	"Example return value: '10.0 % {3 ms}'"

	| absoluteTime relativeTime | 
	
	absoluteTime := self getAbsoluteTime.
	relativeTime := self getRelativeTimeRegarding: aTotalTimeValue.

	^ (relativeTime printShowingDecimalPlaces: 1) asString , ' % {' , absoluteTime asString, ' ms}'. 