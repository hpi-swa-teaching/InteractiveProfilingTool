tests
testGetAbsoluteTimeWithNonDefaultPollingInterval

	| messageTally wrapper |
	
	messageTally := Mock new
		expect: #tally toReturn: 500;
		expect: #receivers toReturn: {}.
		
	wrapper := IPTMessageTallyWrapper
		with: messageTally
		withTotalTime: 1000
		andTotalTallyCount: 2000.

	self assert: 250 equals: wrapper getAbsoluteTime