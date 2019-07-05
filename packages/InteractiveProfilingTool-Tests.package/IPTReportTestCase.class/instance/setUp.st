running
setUp

	tallyMock := MessageTallyMock new 
		method: Boolean >> #ifTrue:;
		tally: 70;
		receivers: {}.
		
	wrappedTally := MessageTallyWrapperMock new 
		messageTally: tallyMock;
		totalTimeOfOverallTree: 100.

	tallyObjectNoCalls := IPTReportTestCase constructMessageTallyFrom: [].
	
	self buildDummyClass. 
	self buildDummyObject.
	
	self compileDummyMethods