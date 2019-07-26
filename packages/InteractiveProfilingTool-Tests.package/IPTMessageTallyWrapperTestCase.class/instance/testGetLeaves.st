tests
testGetLeaves

	| rootNode innerNode leafNode wrapper |
	
	leafNode := Mock new
		expect: #tally toReturn: 100;
		expect: #receivers toReturn: {}.
		
	innerNode := Mock new
		expect: #tally toReturn: 100;
		expect: #receivers toReturn: {leafNode}.
		
	rootNode := Mock expect: #receivers toReturn: {innerNode}.
	
	wrapper := IPTMessageTallyWrapper
		with: rootNode
		withTotalTime: 100
		andTotalTallyCount: 100.
	
	self assert: 1 equals: wrapper getLeaves size.
	self assert: leafNode equals: wrapper getLeaves first messageTally
	