formatting
formatGarbageCollectionGeneration: aLabel withStats: aDict

	| values |
	
	values := #(count time relativeTime averageTime) collect: [:key | aDict at: key].

	^ (aDict at: #averageTime)
		ifNil: [aLabel, ' GCs: {1} total, {2} ms ({3}% uptime)' format: values]
		ifNotNil:  [aLabel, ' GCs: {1} total, {2} ms ({3}% uptime, {4} ms avg)' format: values]