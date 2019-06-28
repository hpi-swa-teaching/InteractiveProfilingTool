running
setUp

	tallyMock := MessageTallyMock new 
		method: Boolean >> #ifTrue:;
		tally: 70;
		receivers: {}.
		
	wrappedTally := MessageTallyWrapperMock new 
		messageTally: tallyMock;
		totalTallyCountOfOverallTree: 100;
		totalTimeOfOverallTree: 100.
		
	wrappedTallyWithLowRuntime := MessageTallyWrapperMock new 
		messageTally: tallyMock;
		totalTallyCountOfOverallTree: 700000;
		totalTimeOfOverallTree: 700000.
	
	wrappedTallyWithHalfRuntime := MessageTallyWrapperMock new 
		messageTally: tallyMock;
		totalTallyCountOfOverallTree: 140;
		totalTimeOfOverallTree: 140.

	tallyObjectNoCalls := IPTReportTestCase constructMessageTallyFrom: [].
	
	self buildDummyClass. 
	
	self compileDummyMethods
	

	