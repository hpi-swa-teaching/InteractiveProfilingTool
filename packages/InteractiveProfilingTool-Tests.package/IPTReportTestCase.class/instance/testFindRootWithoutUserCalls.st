tests
testFindRootWithoutUserCalls
	
	| root |
	
	root := IPTReportMock findRootForUserCalls: tallyObjectNoCalls.
	self assert: nil equals: root