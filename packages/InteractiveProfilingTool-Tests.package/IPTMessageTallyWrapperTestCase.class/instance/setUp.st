running
setUp
	
	tallyMock := MessageTallyMock new
		method: Boolean >> #ifTrue:;
		tally: 100;
		receivers: {}.
	
	wrappedTallyMock := MessageTallyWrapperMock new
		messageTally: tallyMock;
		totalTimeOfOverallTree: 200;
		receivers: {}.
		
	wrappedTallyMockWithLowRuntime := MessageTallyWrapperMock new
		messageTally: tallyMock;
		totalTimeOfOverallTree: 100000