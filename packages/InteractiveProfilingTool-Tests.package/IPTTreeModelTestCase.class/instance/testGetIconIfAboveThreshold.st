tests
testGetIconIfAboveThreshold

	| model messageTally expected actual |
	
	model := IPTTreeModelMock new
		totalTime: 100;
		yourself.
		 
	messageTally := MessageTallyMock new
		tally: 51;
		yourself. 
	
	expected := model class highRuntimeIcon bits.
	actual := (model getIcon: messageTally) bits.
	
	self assert: expected equals: actual