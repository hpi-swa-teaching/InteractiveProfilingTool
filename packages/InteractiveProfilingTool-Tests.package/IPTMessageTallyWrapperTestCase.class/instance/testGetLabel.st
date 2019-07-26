tests
testGetLabel

	| messageTally wrapper expectedLabel |
	
	messageTally := Mock new
		expect: #tally toReturn: 100;
		expect: #method toReturn: (Boolean >> #ifTrue:);
		expect: #receivers toReturn: {}.
		
	wrapper := IPTMessageTallyWrapper
		with: messageTally
		withTotalTime: 200
		andTotalTallyCount: 200.
	
	expectedLabel := '50.0 % {100 ms} Boolean >> ifTrue:'.
	
	self assert: expectedLabel equals: wrapper getLabel