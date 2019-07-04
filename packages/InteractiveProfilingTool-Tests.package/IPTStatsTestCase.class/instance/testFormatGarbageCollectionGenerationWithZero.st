tests
testFormatGarbageCollectionGenerationWithZero

	| actual expected stats |
	
	stats := Dictionary newFrom: {
		#count				-> 0.
		#time				-> 0.
		#relativeTime		-> 0.
		#averageTime		-> nil }.

	expected := 'Full GCs: 0 total, 0 ms (0% uptime)'.
	actual := model formatGarbageCollectionGeneration: 'Full' withStats: stats.
	
	self assert: expected equals: actual