tests
testGetMemoryStatsFree

	| wrapper expected actual |
	
	wrapper := IPTMessageTallyWrapper
		with: messageTallyWithGarbageCollectionStats
		withTotalTime: nil
		andTotalTallyCount: nil.
	
	expected := wrapper getMemoryStats at: #free.
	actual := -300000.

	self assert: expected equals: actual


		
	