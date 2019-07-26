formatting
formatGarbageCollectionStats

	| lines statsFull statsIncremental |
	
	statsFull := self root getFullGarbageCollectionStats.
	statsIncremental := self root getIncrementalGarbageCollectionStats.

	lines := {
		self formatGarbageCollectionGeneration: 'Full' withStats: statsFull.
		self formatGarbageCollectionGeneration: 'Incremental' withStats: statsIncremental.
		self formatTenures.
		self formatRootOverflows}.
		
	 ^ self formatStats: lines withHeading: 'Garbage Collector'