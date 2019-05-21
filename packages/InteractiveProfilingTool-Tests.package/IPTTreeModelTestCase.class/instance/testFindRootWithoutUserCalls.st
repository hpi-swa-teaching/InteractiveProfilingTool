tests
testFindRootWithoutUserCalls
	
	| root |
	
	root := describedClass findRootForUserCalls: tallyObjectTimeZero.
	self assert: nil equals: root