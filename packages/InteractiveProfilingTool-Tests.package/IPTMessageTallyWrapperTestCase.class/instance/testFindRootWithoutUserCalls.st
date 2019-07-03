tests
testFindRootWithoutUserCalls
	
	| userCallsRoot |
	
	userCallsRoot := wrappedTallyMock findRootForUserCalls.
	self assert: nil equals: userCallsRoot