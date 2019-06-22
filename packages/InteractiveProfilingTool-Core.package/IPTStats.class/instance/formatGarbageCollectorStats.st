as yet unclassified
formatGarbageCollectorStats

	| stats lines |
	
	stats := self root getGarbageCollectorStats.
	
	lines := {
		('Full GCs: {1} total' format: {'XYZ'}).
		('Incremental GCs: {1} total' format: {stats at: #incrementalGCs}).
		('Tenures: {1}' format: {stats at: #numberOfObjectsInOldSpace}).
		('Root Table: {1} overflows' format: {stats at: #rootOverflows})}.
		
	 ^ self formatStats: lines withHeading: 'Garbage Collector'.