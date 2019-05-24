tests
testIsRelevantForOverallPerformance

	| mockTally tree |
	
	tree := IPTTreeModelMock new totalTime: 100.
	
	mockTally := MessageTallyMock new tally: 5.
	self assert: (tree isRelevantForOverallPerformance: mockTally).
	
	mockTally := MessageTallyMock new tally: 0.3.
	self deny: (tree isRelevantForOverallPerformance: mockTally).
	
	mockTally := MessageTallyMock new tally: 1.
	self assert: (tree isRelevantForOverallPerformance: mockTally).