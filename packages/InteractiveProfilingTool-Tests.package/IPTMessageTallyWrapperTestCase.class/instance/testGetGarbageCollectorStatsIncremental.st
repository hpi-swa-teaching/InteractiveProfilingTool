tests
testGetGarbageCollectorStatsIncremental

	| expected actual |
	
	actual := wrappedTallyMock getGarbageCollectorStats at: #incremental.
	expected := Dictionary newFrom: {
		#count -> 333.
		#time -> 444.
		#relativeTime -> 66.67.
	}.

	self assert: expected equals: actual


		
	