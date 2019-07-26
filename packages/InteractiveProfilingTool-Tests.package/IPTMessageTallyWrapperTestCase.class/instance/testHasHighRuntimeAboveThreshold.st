tests
testHasHighRuntimeAboveThreshold

	| messageTally wrapper |
	
	messageTally := Mock new
		expect: #tally toReturn: 200;
		expect: #receivers toReturn: {}.
	
	wrapper := IPTMessageTallyWrapper
		with: messageTally
		withTotalTime: 300
		andTotalTallyCount: 300.

	self assert: wrapper hasHighRuntime