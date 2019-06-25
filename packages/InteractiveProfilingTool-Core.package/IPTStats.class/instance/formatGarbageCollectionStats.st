formatting
formatGarbageCollectionStats

	| lines statsFull statsIncremental |
	
	statsFull := self root getFullGarbageCollectionStats.
	statsIncremental := self root getIncrementalGarbageCollectionStats.

	lines := {
		self formatGarbageCollectionGeneration: 'Full' withStats: statsFull.
		self formatGarbageCollectionGeneration: 'Incremental' withStats: statsIncremental.
		('Tenures: {1}' format: { self root getTenures }).
		('Root Table: {1} overflows' format: { self root getRootOverflows })}.
		
	 ^ self formatStats: lines withHeading: 'Garbage Collector'