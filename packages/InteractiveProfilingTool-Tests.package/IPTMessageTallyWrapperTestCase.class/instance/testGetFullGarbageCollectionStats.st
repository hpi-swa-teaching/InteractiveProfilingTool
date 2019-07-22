tests
testGetFullGarbageCollectionStats

	| wrapper expected actual |
	
	wrapper := IPTMessageTallyWrapper
		with: messageTallyWithGarbageCollectionStats
		withTotalTime: 200
		andTotalTallyCount: 200.

	actual := wrapper getFullGarbageCollectionStats.
	
	expected := Dictionary newFrom: {
		#count -> 111.
		#time -> 222.
		#relativeTime -> 33.
		#averageTime -> 2 }.

	self assert: expected equals: actual


		
	