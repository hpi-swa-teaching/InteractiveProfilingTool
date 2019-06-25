tests
testGetFullGarbageCollectionStats

	| expected actual |
	
	actual := wrappedTallyMock getFullGarbageCollectionStats.
	expected := Dictionary newFrom: {
		#count -> 111.
		#time -> 222.
		#relativeTime -> 33.33.
		#averageTime -> 2 }.

	self assert: expected equals: actual


		
	