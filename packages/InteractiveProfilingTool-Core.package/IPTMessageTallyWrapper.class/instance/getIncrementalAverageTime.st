gc stats access
getIncrementalAverageTime

	^ (self getIncrementalCount = 0)
		ifTrue: [nil]
		ifFalse: [(self getIncrementalTime / self getIncrementalCount) asFloat roundTo: 1]