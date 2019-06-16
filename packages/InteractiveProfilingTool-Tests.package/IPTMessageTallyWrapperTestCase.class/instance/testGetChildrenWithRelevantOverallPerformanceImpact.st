as yet unclassified
testGetChildrenWithRelevantOverallPerformanceImpact

	| wrappedTallyMockWithRelevantChild wrappedTallyMockWithoutRelevantChild |
	
	wrappedTallyMockWithRelevantChild := wrappedTallyMockWithLowRuntime receivers: {wrappedTallyMock}.
	wrappedTallyMockWithoutRelevantChild := wrappedTallyMock receivers: {wrappedTallyMockWithLowRuntime}.
	
	self assert: {wrappedTallyMock} equals: wrappedTallyMockWithRelevantChild getChildrenWithRelevantPerformanceImpact.
	self assert: {} equals: wrappedTallyMockWithoutRelevantChild getChildrenWithRelevantPerformanceImpact