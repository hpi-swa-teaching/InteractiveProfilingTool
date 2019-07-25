gc stats access
getFullGarbageCollectionStats
	
	^ Dictionary newFrom: {
		#count -> self getFullCount.
		#time -> self getFullTime.
		#relativeTime -> self getFullRelativeTime. 
		#averageTime -> self getFullAverageTime}