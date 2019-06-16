tests
testInitializeWithRootMessageTallyNil
	
	| tree |
	
	tree := IPTTreeModelMock new
		initializeWithRootMessageTally: nil.
	
	self assert: tree roots equals: {}.
	self assert: tree totalTime equals: 0