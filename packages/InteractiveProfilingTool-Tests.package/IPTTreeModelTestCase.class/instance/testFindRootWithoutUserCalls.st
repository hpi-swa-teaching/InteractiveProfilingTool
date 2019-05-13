tests
testFindRootWithoutUserCalls
	
	| root |
	
	root := IPTTreeModel findRootForUserCalls: self getMessageTallyWithoutUserCalls.
	self assert: nil equals: root