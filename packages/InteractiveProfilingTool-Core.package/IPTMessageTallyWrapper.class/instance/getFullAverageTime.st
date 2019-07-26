gc stats access
getFullAverageTime
	
	^ (self getFullCount isZero)
		ifTrue: [nil]
		ifFalse: [(self getFullTime / self getFullCount) asFloat roundTo: 1]