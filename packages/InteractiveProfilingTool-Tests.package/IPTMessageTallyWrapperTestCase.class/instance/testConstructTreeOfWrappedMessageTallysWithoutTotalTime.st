tests
testConstructTreeOfWrappedMessageTallysWithoutTotalTime

	| wrapper |
	
	wrapper := IPTMessageTallyWrapper constructTreeOfWrappedMessageTallys: tallyMock.
	
	self assert: 100 equals: wrapper totalTimeOfOverallTree