tests
testGetChildrenWithRelevantPerformanceImpact

	| mockTally mockTallyChildA mockTallyChildB mockTallyChildC relevantChildrenActual relevantChildrenExpected |
	
	mockTallyChildA := MessageTallyMock new tally: 4.
	mockTallyChildB := MessageTallyMock new tally: 100.
	mockTallyChildC := MessageTallyMock new tally: 0.
	
	mockTally := MessageTallyMock new receivers: {mockTallyChildA. mockTallyChildB. mockTallyChildC}.
	
	relevantChildrenExpected := {mockTallyChildA. mockTallyChildB}.
	relevantChildrenActual := IPTTreeModelMock new getChildrenWithRelevantPerformanceImpact: mockTally.
	
	self assert: relevantChildrenExpected equals: relevantChildrenActual
	