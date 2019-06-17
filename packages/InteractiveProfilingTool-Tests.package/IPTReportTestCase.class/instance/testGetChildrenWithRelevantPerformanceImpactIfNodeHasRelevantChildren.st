tests
testGetChildrenWithRelevantPerformanceImpactIfNodeHasRelevantChildren

	| wrappedTallyMockRoot |
	
	wrappedTallyMockRoot := wrappedTally receivers: {wrappedTallyWithHalfRuntime}.
	
	self assert: wrappedTallyMockRoot hasChildrenWithRelevantPerformanceImpact