tests
testHasHighRuntimeBelowThreshold

	| messageTally wrapper |
	
	messageTally := Mock new
		expect: #tally toReturn: 100;
		expect: #receivers toReturn: {}.
	
	wrapper := IPTMessageTallyWrapper
		with: messageTally
		withTotalTime: 300
		andTotalTallyCount: 300.

	self deny: wrapper hasHighRuntime