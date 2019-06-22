tests
testGetGarbageCollectorStatsRootOverflows

	| expected actual |
	
	actual := wrappedTallyMock getGarbageCollectorStats at: #rootOverflows.
	expected := 666.

	self assert: expected equals: actual


		
	