tests
testConstructTreeOfWrappedMessageTallysWithoutTotalTime

	| wrapper |
	
	wrapper := IPTMessageTallyWrapper with: tallyMock.
	
	self assert: 100 equals: wrapper totalTimeOfOverallTree