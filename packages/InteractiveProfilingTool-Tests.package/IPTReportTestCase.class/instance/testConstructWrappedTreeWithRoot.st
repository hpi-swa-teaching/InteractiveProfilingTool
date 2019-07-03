tests
testConstructWrappedTreeWithRoot

	| wrappedTally |
	
	wrappedTally := IPTReport constructWrappedTreeWithRoot: tallyMock.
	
	self assert: 70  equals: wrappedTally totalTimeOfOverallTree.
	self assert: tallyMock identical: wrappedTally messageTally.
	self assert: wrappedTally receivers isEmpty