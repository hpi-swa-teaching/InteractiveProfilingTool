tests
testIsRelevantForOverallPerformanceBelowThreshold

	| messageTally wrapper |
	
	messageTally := Mock new
		expect: #tally toReturn: 1;
		expect: #receivers toReturn: {}.
	
	wrapper := IPTMessageTallyWrapper
		with: messageTally
		withTotalTime: 100
		andTotalTallyCount: 100.

	self deny: wrapper isRelevantForPerformance