tests
testConstructTreeOfWrappedMessageTallysForSingleMessageTally

	| wrappedTally |
	
	wrappedTally := IPTMessageTallyWrapper with: tallyMock withTotalTime: 500 andTotalTallyCount: 500.
	
	self assert: tallyMock identical: wrappedTally messageTally.
	self assert: 500 equals: wrappedTally totalTimeOfOverallTree