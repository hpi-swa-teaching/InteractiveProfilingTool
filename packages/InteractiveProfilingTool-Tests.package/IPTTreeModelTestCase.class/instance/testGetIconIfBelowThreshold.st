tests
testGetIconIfBelowThreshold

	| model messageTally |
	
	model := IPTTreeModelMock new. 
	messageTally := MessageTallyMock new. 

	messageTally tally: 49.
	model totalTime: 100.
	
	self assert: nil equals: (model getIcon: messageTally)