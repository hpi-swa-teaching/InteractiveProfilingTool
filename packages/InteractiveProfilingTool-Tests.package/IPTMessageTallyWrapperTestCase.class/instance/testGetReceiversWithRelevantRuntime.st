tests
testGetReceiversWithRelevantRuntime

	| wrappedTallyMockWithRelevantChild wrappedTallyMockWithoutRelevantChild |
	
	wrappedTallyMockWithRelevantChild := wrappedTallyMockWithLowRuntime receivers: {wrappedTallyMock}.
	wrappedTallyMockWithoutRelevantChild := wrappedTallyMock receivers: {wrappedTallyMockWithLowRuntime}.
	
	self assert: {wrappedTallyMock} equals: wrappedTallyMockWithRelevantChild getReceiversWithRelevantRuntime.
	self assert: {} equals: wrappedTallyMockWithoutRelevantChild getReceiversWithRelevantRuntime