tests
testGetMemoryStatsOld

	| wrapper expected actual |
	
	wrapper := IPTMessageTallyWrapper
		with: messageTallyWithGarbageCollectionStats
		withTotalTime: nil
		andTotalTallyCount: nil.
	
	expected := wrapper getMemoryStats at: #old.
	actual := 100000.

	self assert: expected equals: actual


		
	