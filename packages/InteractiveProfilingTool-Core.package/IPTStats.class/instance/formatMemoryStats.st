formatting
formatMemoryStats

	| stats lines |
	
	stats := self root getMemoryStats.	
	lines := {
		('Old: ', (stats at: #old), ' bytes').
		('New: ', (stats at: #young), ' bytes').
		('Free ', (stats at: #free), ' bytes').
		('Used: ', (stats at: #used), ' bytes')}.
		
	 ^ self formatStats: lines withHeading: 'Memory'