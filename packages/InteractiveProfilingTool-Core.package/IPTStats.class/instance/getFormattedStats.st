accessing
getFormattedStats

	| memoryStats gcStats formattedMemory formattedMemoryGC |
	
	memoryStats := self root getMemoryStats.
	gcStats := self root getGCStats.
	
	formattedMemory := self getFormattedSection: 'Memory'
											with: memoryStats
											format: [ :value | '{1} bytes' format: {value} ].
											
	formattedMemoryGC := self getFormattedSectionForGCStats:'GCs' with: gcStats.
	
	^ ( formattedMemory append: formattedMemoryGC)
	