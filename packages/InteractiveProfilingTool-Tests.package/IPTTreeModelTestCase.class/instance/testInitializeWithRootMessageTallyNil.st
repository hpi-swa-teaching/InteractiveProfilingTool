tests
testInitializeWithRootMessageTallyNil
	
	| tree messageTally |
	
	messageTally := MessageTallyMock new.
	
	tree := IPTTreeModelMock new
		initializeWithRootMessageTally: nil.
	
	self assert: tree roots equals: {}.
	self assert: tree totalTime equals: 0.