formatting
formatGarbageCollectionStats

	| stats lines statsFull statsIncremental |
	
	stats := self root getGarbageCollectionStats.
	statsFull := self root getFullGarbageCollectionStats.
	statsIncremental := self root getIncrementalGarbageCollectionStats.

	lines := {
		self formatGarbageCollectionGeneration: 'Full' withStats: statsFull.
		self formatGarbageCollectionGeneration: 'Incremental' withStats: statsIncremental.
		('Tenures: {1}' format: {stats at: #tenures}).
		('Root Table: {1} overflows' format: {stats at: #rootOverflows})}.
		
	 ^ self formatStats: lines withHeading: 'Garbage Collector'