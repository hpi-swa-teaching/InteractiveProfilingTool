tests
testHasChildrenWithRelevantPerformanceImpact

	| mockTally mockTallyChildA mockTallyChildB mockTallyChildC tree |
	
	tree := IPTTreeModelMock new totalTime: 100.
	
	mockTallyChildA := MessageTallyMock new tally: 4.
	mockTallyChildB := MessageTallyMock new tally: 100.
	mockTallyChildC := MessageTallyMock new tally: 0.
	
	mockTally := MessageTallyMock new receivers: {mockTallyChildA. mockTallyChildB. mockTallyChildC}.
	self assert: (tree hasChildrenWithRelevantPerformanceImpact: mockTally).
	
	mockTally := MessageTallyMock new receivers: {mockTallyChildC}.
	self deny: (tree hasChildrenWithRelevantPerformanceImpact: mockTally).
	
	mockTally := MessageTallyMock new receivers: {}.
	self deny: (tree hasChildrenWithRelevantPerformanceImpact: mockTally)

	