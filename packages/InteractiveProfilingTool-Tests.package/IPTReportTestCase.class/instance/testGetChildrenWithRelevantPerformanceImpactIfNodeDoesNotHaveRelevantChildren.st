tests
testGetChildrenWithRelevantPerformanceImpactIfNodeDoesNotHaveRelevantChildren

	| wrappedTallyMockRoot |
	
	wrappedTallyMockRoot := wrappedTally receivers: {wrappedTallyWithLowRuntime}.
	
	self assert: wrappedTallyMockRoot getChildrenWithRelevantPerformanceImpact isEmpty