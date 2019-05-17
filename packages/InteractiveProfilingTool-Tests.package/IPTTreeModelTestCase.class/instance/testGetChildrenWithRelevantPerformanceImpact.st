tests
testGetChildrenWithRelevantPerformanceImpact

	| mockTally mockTallyChildA mockTallyChildB mockTallyChildC relevantChildrenActual relevantChildrenExpected |
	
	mockTallyChildA := MessageTallyMock new tally: 4.
	mockTallyChildB := MessageTallyMock new tally: 100.
	mockTallyChildC := MessageTallyMock new tally: 0.
	
	mockTally := MessageTallyMock new recievers: {mockTallyChildA. mockTallyChildB. mockTallyChildC}.
	
	relevantChildrenExpected := {mockTallyChildA. mockTallyChildB}.
	relevantChildrenActual := describedClass new getChildrenWithRelevantPerformanceImpact: mockTally.
	
	self assert: relevantChildrenExpected = relevantChildrenActual
	