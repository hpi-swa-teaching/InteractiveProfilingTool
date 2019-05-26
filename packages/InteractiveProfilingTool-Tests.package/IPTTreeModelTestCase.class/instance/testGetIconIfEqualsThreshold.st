tests
testGetIconIfEqualsThreshold

	| model messageTally actual expected |
	
	model := IPTTreeModelMock new
		totalTime: 100;
		yourself.
		 
	messageTally := MessageTallyMock new
		tally: 50;
		yourself.
	
	expected := model class highRuntimeIcon bits.
	actual := (model getIcon: messageTally) bits.
	
	self assert: expected equals: actual