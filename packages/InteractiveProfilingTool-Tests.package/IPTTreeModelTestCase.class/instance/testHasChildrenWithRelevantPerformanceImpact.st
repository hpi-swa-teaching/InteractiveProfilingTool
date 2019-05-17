tests
testHasChildrenWithRelevantPerformanceImpact

	| mockTally mockTallyChildA mockTallyChildB mockTallyChildC tree |
	
	tree := describedClass new totalTime: 100.
	
	mockTallyChildA := MessageTallyMock new tally: 4.
	mockTallyChildB := MessageTallyMock new tally: 100.
	mockTallyChildC := MessageTallyMock new tally: 0.
	
	mockTally := MessageTallyMock new recievers: {mockTallyChildA. mockTallyChildB. mockTallyChildC}.
	self assert: (tree hasChildrenWithRelevantPerformanceImpact: mockTally).
	
	mockTally := MessageTallyMock new recievers: {mockTallyChildC}.
	self deny: (tree hasChildrenWithRelevantPerformanceImpact: mockTally).
	
	mockTally := MessageTallyMock new recievers: {}.
	self deny: (tree hasChildrenWithRelevantPerformanceImpact: mockTally)

	