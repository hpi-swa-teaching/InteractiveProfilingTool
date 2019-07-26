tests
testGetTimeString

	| messageTally wrapper |
	
	messageTally := Mock new
		expect: #tally toReturn: 150;
		expect: #receivers toReturn: {}.
	
	wrapper := IPTMessageTallyWrapper
		with: messageTally
		withTotalTime: 300
		andTotalTallyCount: 300.
	
	self assert: '50.0 % {150 ms}' equals: wrapper getTimeString