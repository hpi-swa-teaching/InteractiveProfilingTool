tests
testFindRootWithoutUserCalls
	
	| root |
	
	root := describedClass findRootForUserCalls: self getMessageTallyWithoutUserCalls.
	self assert: nil equals: root