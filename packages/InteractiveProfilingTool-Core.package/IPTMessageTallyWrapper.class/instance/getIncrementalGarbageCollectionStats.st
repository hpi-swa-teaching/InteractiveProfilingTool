information extraction
getIncrementalGarbageCollectionStats

	| gcStats incrementalAverageTime incrementalCount incrementalRelativeTime incrementalTime uptime |
	
	gcStats := self messageTally gcStats.
	uptime := self messageTally time.
					
	incrementalCount := gcStats at: 9.
	incrementalTime := gcStats at: 10.
	incrementalRelativeTime := (incrementalTime / uptime * 100) roundTo: 1.
		
	incrementalAverageTime := (incrementalCount = 0)
		ifTrue: [ nil ]
		ifFalse: [ (incrementalTime / incrementalCount) asFloat roundTo: 1 ].

	^ Dictionary newFrom: {
		#count -> incrementalCount.
		#time -> incrementalTime.
		#relativeTime -> incrementalRelativeTime.
		#averageTime	 -> incrementalAverageTime }