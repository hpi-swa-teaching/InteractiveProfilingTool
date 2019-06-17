tests
testHasChildrenWithRelevantPerformanceImpactIfNodeDoesNotHaveRelevantChildren

	| wrappedTallyMockRoot |
	
	wrappedTallyMockRoot := wrappedTally receivers: {wrappedTallyWithLowRuntime}.
	
	self deny: wrappedTallyMockRoot hasChildrenWithRelevantPerformanceImpact