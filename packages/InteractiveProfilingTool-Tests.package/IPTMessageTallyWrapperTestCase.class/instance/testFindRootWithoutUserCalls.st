tests
testFindRootWithoutUserCalls
	
	| messageTally wrapper |
	
	messageTally := Mock expect: #receivers toReturn: {}.
	
	wrapper := IPTMessageTallyWrapper
		with: messageTally
		withTotalTime: nil
		andTotalTallyCount: nil.
	
	self assert: nil equals: wrapper findRootsForUserCalls.
