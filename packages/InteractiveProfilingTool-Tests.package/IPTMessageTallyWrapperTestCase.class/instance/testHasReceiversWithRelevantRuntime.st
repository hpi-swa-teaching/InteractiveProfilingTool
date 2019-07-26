tests
testHasReceiversWithRelevantRuntime

	| wrappedTallyMockWithRelevantChild wrappedTallyMockWithoutRelevantChild |
	
	wrappedTallyMockWithRelevantChild := wrappedTallyMockWithLowRuntime receivers: {wrappedTallyMock}.
	wrappedTallyMockWithoutRelevantChild := wrappedTallyMock receivers: {wrappedTallyMockWithLowRuntime}.
	
	self assert: wrappedTallyMockWithRelevantChild hasReceiversWithRelevantRuntime.
	self deny: wrappedTallyMockWithoutRelevantChild hasReceiversWithRelevantRuntime