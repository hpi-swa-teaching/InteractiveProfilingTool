tests
testInitializeWithRootMessageTallyMocked
	
	| tree messageTally |
	
	messageTally := MessageTallyMock new.
	
	tree := IPTTreeModelMock new
		initializeWithRootMessageTally: messageTally.
	
	self assert: tree roots equals: {messageTally}.
	self assert: tree totalTime equals: messageTally tally.