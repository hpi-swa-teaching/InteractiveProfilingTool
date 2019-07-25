gc stats access
getIncrementalGarbageCollectionStats

	^ Dictionary newFrom: {
		#count -> self getIncrementalCount.
		#time -> self getIncrementalTime.
		#relativeTime -> self getIncrementalRelativeTime.
		#averageTime -> self getIncrementalAverageTime}