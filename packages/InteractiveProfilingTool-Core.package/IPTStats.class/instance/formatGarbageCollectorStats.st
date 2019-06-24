formatting
formatGarbageCollectorStats

	| stats lines full incremental fullGCsLine incrementalGCsLine |
	
	stats := self root getGarbageCollectorStats.
	
	full := stats at: #full.
	incremental := stats at: #incremental.
	
	fullGCsLine := ((full at: #averageTime) notNil)
		ifFalse:  [ 'Full GCs: {1} total, {2} ms ({3}% uptime)' format: full values ]
		ifTrue: [ 'Full GCs: {1} total, {2} ms ({3}% uptime, {4} ms avg)' format: full values ].
		
	incrementalGCsLine := ((incremental at: #averageTime) notNil)
		ifFalse: [ 'Incremental GCs: {1} total, {2} ms ({3}% uptime)' format: incremental values ]
		ifTrue:  [ 'Incremental GCs: {1} total, {2} ms ({3}% uptime, {4} ms avg)' format: incremental values ].
	
	lines := {
		fullGCsLine.
		incrementalGCsLine.
		('Tenures: {1}' format: {stats at: #tenures}).
		('Root Table: {1} overflows' format: {stats at: #rootOverflows})}.
		
	 ^ self formatStats: lines withHeading: 'Garbage Collector'