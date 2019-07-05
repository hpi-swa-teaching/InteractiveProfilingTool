information extraction
getFullGarbageCollectionStats

	| fullCount fullRelativeTime fullTime gcStats uptime fullAverageTime |
	
	gcStats := self messageTally gcStats.
	uptime := self messageTally time.
		
	fullCount	 := gcStats at: 7.
	fullTime := gcStats at: 8.
	fullRelativeTime := (fullTime / uptime * 100) roundTo: 1.
				
	fullAverageTime := (fullCount isZero)
		ifTrue: [ nil ]
		ifFalse: [ (fullTime / fullCount) asFloat roundTo: 1 ].
				
	^ Dictionary newFrom: {
		#count -> fullCount.
		#time -> fullTime.
		#relativeTime -> fullRelativeTime. 
		#averageTime	 -> fullAverageTime }