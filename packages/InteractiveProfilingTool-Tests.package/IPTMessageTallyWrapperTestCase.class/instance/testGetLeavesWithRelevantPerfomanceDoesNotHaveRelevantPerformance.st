tests
testGetLeavesWithRelevantPerfomanceDoesNotHaveRelevantPerformance

	| leaves expected |
	
	leaves := wrappedTallyMockWithLowRuntime getLeavesWithRelevantPerformance.
	expected := OrderedCollection new.
	
	self assert: leaves equals: expected
	