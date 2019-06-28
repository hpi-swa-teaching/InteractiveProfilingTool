running
setUp
	
	tallyMock := MessageTallyMock new
		method: Boolean >> #ifTrue:;
		tally: 100;
		receivers: {}.
	
	wrappedTallyMock := MessageTallyWrapperMock new
		messageTally: tallyMock;
		totalTimeOfOverallTree: 200;
		totalTallyCountOfOverallTree: 200.
		
	wrappedTallyMockWithLowRuntime := MessageTallyWrapperMock new
		messageTally: tallyMock;
		totalTimeOfOverallTree: 100000;
		totalTallyCountOfOverallTree: 100000