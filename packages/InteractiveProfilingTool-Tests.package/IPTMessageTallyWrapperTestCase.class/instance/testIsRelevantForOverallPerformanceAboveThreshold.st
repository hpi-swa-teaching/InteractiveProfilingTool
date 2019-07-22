tests
testIsRelevantForOverallPerformanceAboveThreshold

	| messageTally wrapper |
	
	messageTally := Mock new
		expect: #tally toReturn: 2;
		expect: #receivers toReturn: {}.
	
	wrapper := IPTMessageTallyWrapper
		with: messageTally
		withTotalTime: 100
		andTotalTallyCount: 100.

	self assert: wrapper isRelevantForPerformance