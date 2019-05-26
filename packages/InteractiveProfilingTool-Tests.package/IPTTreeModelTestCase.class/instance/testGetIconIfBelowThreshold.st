tests
testGetIconIfBelowThreshold

	| model messageTally |
	
	model := IPTTreeModelMock new
		totalTime: 100;
		yourself.
		 
	messageTally := MessageTallyMock new
		tally: 49;
		yourself.
	
	self assert: nil equals: (model getIcon: messageTally)