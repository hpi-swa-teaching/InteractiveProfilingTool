tests
testGetIncrementalGarbageCollectionStats

	| expected actual |
	
	actual := wrappedTallyMock getIncrementalGarbageCollectionStats.
	expected := Dictionary newFrom: {
		#count -> 333.
		#time -> 444.
		#relativeTime -> 67.
		#averageTime -> 1 }.

	self assert: expected equals: actual


		
	