tests
testFindRootWithoutUserCalls
	
	| root |
	
	root := IPTTreeModelMock findRootForUserCalls: tallyObjectNoCalls.
	self assert: nil equals: root