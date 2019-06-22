as yet unclassified
formatMemoryStats

	| stats lines |
	
	stats := self root getMemoryStats.	
	lines := {
		('old: {1} bytes' format: {stats at: #old}).
		('new: {1} bytes' format: {stats at: #young}).
		('free {1} bytes' format: {stats at: #free}).
		('used: {1} bytes' format: {stats at: #used})}.
		
	 ^ self formatStats: lines withHeading: 'Memory'.