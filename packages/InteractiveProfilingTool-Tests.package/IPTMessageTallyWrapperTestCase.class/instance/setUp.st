as yet unclassified
setUp

	| tallyMock |
	
	tallyMock := MessageTallyMock new
		method: Boolean >> #ifTrue:;
		tally: 100.
	
	wrappedTallyMock := MessageTallyWrapperMock new
		messageTally: tallyMock;
		totalTimeOfOverallTree: 200