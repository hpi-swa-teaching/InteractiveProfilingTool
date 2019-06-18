accessing
getFormattedStats

	| memoryStats |
	
	memoryStats := self root getMemoryStats.

	^ self
		getFormattedSection: 'Memory'
		with: memoryStats
		format: [ :value | '{1} bytes' format: {value} ].