tests
testGetIncrementalGarbageCollectionStats

	| wrapper expected actual |
	
	wrapper := IPTMessageTallyWrapper
		with: messageTallyWithGarbageCollectionStats
		withTotalTime: 200
		andTotalTallyCount: 200.
	
	actual := wrapper getIncrementalGarbageCollectionStats.
	
	expected := Dictionary newFrom: {
		#count -> 333.
		#time -> 444.
		#relativeTime -> 67.
		#averageTime -> 1 }.

	self assert: expected equals: actual


		
	