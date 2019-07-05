tests
testGetAbsoluteTimeWithNonDefaultPollingInterval

	| wrapper tally |
	
	tally := MessageTallyMock new
		receivers: {};
		tally: 50;
		yourself.
	
	wrapper := IPTMessageTallyWrapper
		with: tally
		withTotalTime: 1000
		andTotalTallyCount: 100.
		
	self assert: 500 equals: wrapper getAbsoluteTime