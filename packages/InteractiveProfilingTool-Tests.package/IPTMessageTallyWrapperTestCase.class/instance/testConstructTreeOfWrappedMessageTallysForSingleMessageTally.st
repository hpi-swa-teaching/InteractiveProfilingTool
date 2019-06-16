as yet unclassified
testConstructTreeOfWrappedMessageTallysForSingleMessageTally

	| wrappedTally |
	
	wrappedTally := IPTMessageTallyWrapper constructTreeOfWrappedMessageTallys: tallyMock withTotalTime: 500.
	
	self assert: tallyMock identical: wrappedTally messageTally.
	self assert: 500 equals: wrappedTally totalTimeOfOverallTree