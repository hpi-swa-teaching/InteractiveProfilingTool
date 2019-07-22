tests
testGetRootOverflows

	| wrapper expected actual |
	
	wrapper := IPTMessageTallyWrapper
		with: messageTallyWithGarbageCollectionStats
		withTotalTime: nil
		andTotalTallyCount: nil.
	
	actual := wrapper getRootOverflows.
	expected := 666.

	self assert: expected equals: actual


		
	