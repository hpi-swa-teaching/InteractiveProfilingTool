tests
testGetChildrenWithRelevantPerformanceImpact

	| rootNode relevantNode irrelevantNode wrapper children |
	
	relevantNode := Mock new
		expect: #tally toReturn: 1;
		expect: #receivers toReturn: {}.
		
	irrelevantNode := Mock new
		expect: #tally toReturn: 99;
		expect: #receivers toReturn: {}.
	
	rootNode := Mock expect: #receivers toReturn: {
		relevantNode. irrelevantNode}.
		
	wrapper := IPTMessageTallyWrapper
		with: rootNode
		withTotalTime: 100
		andTotalTallyCount: 100.
	
	children := wrapper getChildrenWithRelevantPerformanceImpact.
		
	self assert: 1 equals: children size.
	self assert: irrelevantNode equals: children first messageTally
	