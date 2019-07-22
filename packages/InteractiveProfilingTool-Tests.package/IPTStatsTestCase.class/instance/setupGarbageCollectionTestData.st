helpers
setupGarbageCollectionTestData

	model root
		expect: #getRootOverflows toReturn: 50;
		expect: #getTenures toReturn: 10;
		
		expect: #getFullGarbageCollectionStats toReturn: (Dictionary newFrom: {
			#count				-> 0.
			#time				-> 0.
			#relativeTime		-> 0.
			#averageTime		-> 0});
					
		expect: #getIncrementalGarbageCollectionStats toReturn: (Dictionary newFrom: {
			#count				-> 0.
			#time				-> 0.
			#relativeTime		-> 0.
			#averageTime		-> 0}).