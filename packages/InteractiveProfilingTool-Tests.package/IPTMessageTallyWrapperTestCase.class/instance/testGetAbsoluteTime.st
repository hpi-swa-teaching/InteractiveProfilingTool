tests
testGetAbsoluteTime

	| messageTally wrapper |
	
	messageTally := Mock new
		expect: #tally toReturn: 500;
		expect: #receivers toReturn: {}.
		
	wrapper := IPTMessageTallyWrapper
		with: messageTally
		withTotalTime: 1000
		andTotalTallyCount: 1000.

	self assert: 500 equals: wrapper getAbsoluteTime