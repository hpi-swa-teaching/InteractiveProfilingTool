information extraction
getTimeString
	"Example return value: '10.0 % {3 ms}'"
	
	| absoluteTimeString relativeTimeString |
	
	relativeTimeString := (self getRelativeTime printShowingDecimalPlaces: 1) asString.
	absoluteTimeString := (self getAbsoluteTime printShowingDecimalPlaces: 0) asString.
	
	^ relativeTimeString, ' % {' , absoluteTimeString, ' ms}'