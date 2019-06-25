tests
testFormatGarbageCollectionGeneration

	| actual expected stats |
	
	stats := Dictionary newFrom: {
		#count				-> 100.
		#time				-> 200.
		#relativeTime		-> 0.5.
		#averageTime		-> 2 }.

	expected := 'Full GCs: 100 total, 200 ms (0.5% uptime, 2 ms avg)'.
	actual := model formatGarbageCollectionGeneration: 'Full' withStats: stats.
	
	self assert: expected equals: actual