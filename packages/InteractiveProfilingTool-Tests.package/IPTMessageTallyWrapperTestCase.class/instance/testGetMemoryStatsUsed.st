as yet unclassified
testGetMemoryStatsUsed

	| expected actual |
	
	expected := wrappedTallyMock getMemoryStats at: #used.
	actual := 300000.

	self assert: expected equals: actual


		
	