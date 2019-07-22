tests
testGetMemoryStatsYoung

	| wrapper expected actual |
	
	wrapper := IPTMessageTallyWrapper
		with: messageTallyWithGarbageCollectionStats
		withTotalTime: nil
		andTotalTallyCount: nil.
	
	expected := wrapper getMemoryStats at: #young.
	actual := 200000.

	self assert: expected equals: actual


		
	