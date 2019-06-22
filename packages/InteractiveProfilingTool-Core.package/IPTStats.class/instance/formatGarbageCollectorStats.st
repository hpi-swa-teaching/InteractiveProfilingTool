as yet unclassified
formatGarbageCollectorStats

	| stats lines full incremental |
	
	stats := self root getGarbageCollectorStats.
	
	full := stats at: #full.
	incremental := stats at: #incremental.
	
	lines := {
		('Full GCs: {1} total, {2}ms ({3}% uptime)' format: full values).
		('Incremental GCs: {1} total, {2}ms ({3}% uptime)' format: incremental values).
		('Tenures: {1}' format: {stats at: #tenures}).
		('Root Table: {1} overflows' format: {stats at: #rootOverflows})}.
		
	 ^ self formatStats: lines withHeading: 'Garbage Collector'.