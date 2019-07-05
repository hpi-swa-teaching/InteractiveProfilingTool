running
setUp

	| messageTallyMock |
	
	messageTallyMock := MessageTallyMock new
		tally: 50;
		method: Integer >> #toString.
	wrappedMessageTallyMock := MessageTallyWrapperMock new
		messageTally: MessageTallyMock;
		totalTimeOfOverallTree: 100.
