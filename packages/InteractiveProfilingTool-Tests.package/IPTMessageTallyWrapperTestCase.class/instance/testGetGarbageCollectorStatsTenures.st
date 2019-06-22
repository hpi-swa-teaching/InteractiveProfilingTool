tests
testGetGarbageCollectorStatsTenures

	| expected actual |
	
	actual := wrappedTallyMock getGarbageCollectorStats at: #tenures.
	expected := 555.

	self assert: expected equals: actual


		
	