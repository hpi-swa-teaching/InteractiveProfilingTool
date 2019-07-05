as yet unclassified
setUp

	tallyMock := MessageTallyMock new 
		method: Boolean >> #ifTrue:;
		tally: 70;
		receivers: {}.
		
	wrappedTally := MessageTallyWrapperMock new 
		messageTally: tallyMock.
			
	wrappedTallyWithHighRuntime := MessageTallyWrapperMock new 
		messageTally: tallyMock;
		totalTimeOfOverallTree: 100.

	wrappedTallyWithLowRuntime := MessageTallyWrapperMock new 
		messageTally: tallyMock;
		totalTimeOfOverallTree: 700000.
	
	wrappedTallyWithHalfRuntime := MessageTallyWrapperMock new 
		messageTally: tallyMock;
		totalTimeOfOverallTree: 140.