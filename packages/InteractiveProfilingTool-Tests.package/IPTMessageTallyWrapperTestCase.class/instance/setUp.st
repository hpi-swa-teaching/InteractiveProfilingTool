running
setUp
	
	tallyMock := MessageTallyMock new
		method: Boolean >> #ifTrue:;
		tally: 100;
		time: 666;
		receivers: {};
		"Nil values are not relevant for tests. For information on the values, please refer
		to IPTMessageTallyWrapper >> getGarbageCollectorStats"
		gcStats: #(100000 300000 0 nil nil nil 111 222 333 444 555 nil nil nil nil nil nil nil nil nil nil 666).
	
	wrappedTallyMock := MessageTallyWrapperMock new
		messageTally: tallyMock;
		totalTimeOfOverallTree: 200;
		receivers: {}.
		
	wrappedTallyMockWithLowRuntime := MessageTallyWrapperMock new
		messageTally: tallyMock;
		totalTimeOfOverallTree: 100000;
		receivers: {}
		