as yet unclassified
testGetMemoryStatsYoung

	| expected actual |
	
	expected := wrappedTallyMock getMemoryStats at: #young.
	actual := 200000.

	self assert: expected equals: actual


		
	