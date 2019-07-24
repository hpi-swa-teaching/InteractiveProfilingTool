tests
testIsRelevantForRuntime

	self assert: wrappedTallyMock isRelevantForRuntime.
	self deny: wrappedTallyMockWithLowRuntime isRelevantForRuntime