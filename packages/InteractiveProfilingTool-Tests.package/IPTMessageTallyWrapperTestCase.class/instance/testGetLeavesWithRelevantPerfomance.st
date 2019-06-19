tests
testGetLeavesWithRelevantPerfomance

	| leaves expected |
	
	leaves := wrappedTallyMock getLeavesWithRelevantPerformance.
	expected := OrderedCollection with: wrappedTallyMock.
	
	self assert: leaves equals: expected
	