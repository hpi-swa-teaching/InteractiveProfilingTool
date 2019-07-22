tests
testWithWithTotalTimeWithTotalTallyCountSetsTimeRecursively

	| rootNode leafNode wrapper childWrapper |
	
	leafNode := Mock expect: #receivers toReturn: {}.
	rootNode := Mock expect: #receivers toReturn: {leafNode}.
	
	wrapper := IPTMessageTallyWrapper
		with: rootNode
		withTotalTime: 500
		andTotalTallyCount: 1000.
		
	childWrapper := wrapper receivers first.
	
	self assert: 500 equals: wrapper totalTimeOfOverallTree.
	self assert: 1000 equals: wrapper totalTallyCountOfOverallTree.
	
	self assert: 500 equals: wrapper totalTimeOfOverallTree.
	self assert: 1000 equals: wrapper totalTallyCountOfOverallTree.