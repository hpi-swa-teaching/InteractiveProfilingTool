tests
testConstructTreeOfWrappedMessageTallysWithoutTotalTime

	| wrappedTally |
	
	wrappedTally := IPTMessageTallyWrapper with: tallyMock.
	
	self assert: 666 equals: wrappedTally totalTimeOfOverallTree