tests
testGetGarbageCollectionStatsRootOverflows

	| expected actual |
	
	actual := wrappedTallyMock getGarbageCollectionStats at: #rootOverflows.
	expected := 666.

	self assert: expected equals: actual


		
	