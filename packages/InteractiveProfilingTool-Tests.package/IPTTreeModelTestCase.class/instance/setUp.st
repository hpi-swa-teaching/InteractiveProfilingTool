running
setUp
	
	| tallyTemp |
	
	tallyTemp := IPTTreeModelTestCase constructMessageTallyFrom: [5 timesRepeat: [Project current world doOneCycle]].
	wrappedTally := MessageTallyWrapperMock new 
		messageTally: tallyTemp;
		totalTimeOfOverallTree: 100.

	tallyObjectNoCalls := IPTTreeModelTestCase constructMessageTallyFrom: []

	