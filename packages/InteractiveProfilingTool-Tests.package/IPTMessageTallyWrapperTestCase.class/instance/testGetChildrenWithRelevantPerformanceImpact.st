tests
testGetChildrenWithRelevantPerformanceImpact

	| root relevantReceiver irrelevantReceiver wrapper children |
	
	relevantReceiver := Mock new
		expect: #tally toReturn: 1;
		expect: #receivers toReturn: {}.
		
	irrelevantReceiver := Mock new
		expect: #tally toReturn: 99;
		expect: #receivers toReturn: {}.
	
	root := Mock expect: #receivers toReturn: {
		relevantReceiver. irrelevantReceiver}.
		
	wrapper := IPTMessageTallyWrapper
		with: root
		withTotalTime: 100
		andTotalTallyCount: 100.
	
	children := wrapper getReceiversWithRelevantRuntime.
		
	self assert: 1 equals: children size.
	self assert: irrelevantReceiver equals: children first messageTally
	