time calculations
getRelativeTimeOf: aMessageTally
	
	| absoluteTime |
	
	self initializeTotalTimeIfNecessaryUsing: aMessageTally.
	absoluteTime := self getAbsoluteTime: aMessageTally.
	^ absoluteTime / self totalTime * 100.0