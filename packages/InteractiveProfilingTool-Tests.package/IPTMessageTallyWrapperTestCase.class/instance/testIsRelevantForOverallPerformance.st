tests
testIsRelevantForOverallPerformance

	self assert: wrappedTallyMock isRelevantForPerformance.
	self deny: wrappedTallyMockWithLowRuntime isRelevantForPerformance