running
setUp

	model := IPTReportMock new userCallsRoots: {}.
	builder := ToolBuilder new.

	tallyMock := MessageTallyMock new 
		method: Boolean >> #ifTrue:;
		tally: 70;
		receivers: {}.
		
	wrappedTally := MessageTallyWrapperMock new 
		messageTally: tallyMock;
		totalTimeOfOverallTree: 100.

	tallyObjectNoCalls := IPTReportTestCase constructMessageTallyFrom: [].
	
	self 
		buildDummyClass; 
		buildDummyObject;	
		compileDummyMethods