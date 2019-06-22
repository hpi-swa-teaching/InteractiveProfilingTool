accessing
getFormattedStats

	| memoryStats gcStats formattedMemory formattedMemoryGC leaves formattedLeaves |
	
	memoryStats := self root getMemoryStats.
	gcStats := self root getGCStats.
	leaves := self getAllLeaves: self userCallsRoot.
	
	formattedMemory := self getFormattedSection: 'Memory'
											with: memoryStats
											format: [ :stats |self getFormattedItemsForMemoryStats: stats].
											
	formattedMemoryGC := self getFormattedSection: 'GCs'
											with: gcStats
											format: [ :stats |self getFormattedItemsForGCStats: stats].
	
	formattedLeaves := self getFormattedSection: 'GCs'
											with: leaves
											format: [ :items |self getFormattedItemsForLeaves: items].
	
	^ ((formattedMemory append: formattedMemoryGC) append: formattedLeaves)
	