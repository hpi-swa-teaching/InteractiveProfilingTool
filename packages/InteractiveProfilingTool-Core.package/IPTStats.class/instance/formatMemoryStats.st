formatting
formatMemoryStats

	| stats lines |
	
	stats := self root getMemoryStats.	
	lines := {
		('Old: {1} bytes' format: {stats at: #old}).
		('New: {1} bytes' format: {stats at: #young}).
		('Free {1} bytes' format: {stats at: #free}).
		('Used: {1} bytes' format: {stats at: #used})}.
		
	 ^ self formatStats: lines withHeading: 'Memory'