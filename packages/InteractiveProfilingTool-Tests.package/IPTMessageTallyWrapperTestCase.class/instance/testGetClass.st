tests
testGetClass

	| messageTally wrapper |
	
	messageTally := Mock new
		expect: #method toReturn: (Boolean >> #ifTrue:);
		expect: #receivers toReturn: {}.
		
	wrapper := IPTMessageTallyWrapper
		with: messageTally
		withTotalTime: nil
		andTotalTallyCount: nil.

	self assert: Boolean equals: wrapper getClass