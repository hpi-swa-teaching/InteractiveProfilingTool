tests
testGetGarbageCollectionStatsTenures

	| expected actual |
	
	actual := wrappedTallyMock getGarbageCollectionStats at: #tenures.
	expected := 555.

	self assert: expected equals: actual


		
	