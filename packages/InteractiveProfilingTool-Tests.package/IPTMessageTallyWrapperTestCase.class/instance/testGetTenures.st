tests
testGetTenures

	| wrapper expected actual |
	
	wrapper := IPTMessageTallyWrapper
		with: messageTallyWithGarbageCollectionStats
		withTotalTime: nil
		andTotalTallyCount: nil.
	
	actual := wrapper getTenures.
	expected := 555.

	self assert: expected equals: actual


		
	