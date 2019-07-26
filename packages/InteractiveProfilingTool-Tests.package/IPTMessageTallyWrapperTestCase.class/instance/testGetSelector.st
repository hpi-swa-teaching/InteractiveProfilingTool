tests
testGetSelector

	| messageTally wrapper |
	
	messageTally := Mock new
		expect: #method toReturn: (Boolean >> #ifTrue:);
		expect: #receivers toReturn: {}.
		
	wrapper := IPTMessageTallyWrapper
		with: messageTally
		withTotalTime: nil
		andTotalTallyCount: nil.

	self assert: #ifTrue: equals: wrapper getSelector