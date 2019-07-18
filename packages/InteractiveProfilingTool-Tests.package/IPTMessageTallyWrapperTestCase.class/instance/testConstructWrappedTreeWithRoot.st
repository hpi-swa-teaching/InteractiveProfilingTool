tests
testConstructWrappedTreeWithRoot

	| wrappedTally |
	
	wrappedTally := IPTMessageTallyWrapper with: tallyMock withTotalTime: 70 andTotalTallyCount: 100.
	
	self assert: 70  equals: wrappedTally totalTimeOfOverallTree.
	self assert: 100 equals: wrappedTally totalTallyCountOfOverallTree.
	self assert: tallyMock identical: wrappedTally messageTally.
	self assert: wrappedTally receivers isEmpty