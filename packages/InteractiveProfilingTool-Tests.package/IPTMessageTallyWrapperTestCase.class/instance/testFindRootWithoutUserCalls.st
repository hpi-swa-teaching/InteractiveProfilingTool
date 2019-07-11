tests
testFindRootWithoutUserCalls
	
	| userCallsRoots |
	
	userCallsRoots := wrappedTallyMock findRootForUserCalls.
	self assert: nil equals: userCallsRoots