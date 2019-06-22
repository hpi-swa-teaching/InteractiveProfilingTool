tests
testGetMemoryStatsOld

	| expected actual |
	
	expected := wrappedTallyMock getMemoryStats at: #old.
	actual := 100000.

	self assert: expected equals: actual


		
	