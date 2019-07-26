tests
testGetRelativeTime

	| messageTally wrapper |
	
	messageTally := Mock new
		expect: #tally toReturn: 150;
		expect: #receivers toReturn: {}.
	
	wrapper := IPTMessageTallyWrapper
		with: messageTally
		withTotalTime: 300
		andTotalTallyCount: 300.

	self assert: 50 equals: wrapper getRelativeTime