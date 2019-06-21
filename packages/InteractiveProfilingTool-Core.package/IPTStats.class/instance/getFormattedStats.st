accessing
getFormattedStats

	| memoryStats gcStats formattedMemory formattedMemoryGC leaves formattedLeaves |
	
	memoryStats := self root getMemoryStats.
	gcStats := self root getGCStats.
	leaves := self getAllLeaves: self userCallsRoot.
	
	formattedMemory := self getFormattedSection: 'Memory'
											with: memoryStats
											format: [ :value | '{1} bytes' format: {value} ].
											
	formattedMemoryGC := self getFormattedSectionForGCStats:'GCs' with: gcStats.
	
	formattedLeaves := self getFormattedSectionForLeaves: 'Leaves' with: leaves.
	
	^ ((formattedMemory append: formattedMemoryGC) append: formattedLeaves)
	