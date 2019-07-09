tests
testFindRootWithoutUserCalls
	
	| userCallsRoots |
	
	userCallsRoots := wrappedTallyMock findRootsForUserCalls.
	self assert: {} equals: userCallsRoots