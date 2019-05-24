as yet unclassified
testGetIconIfAboveThreshold

	| model messageTally expected actual |
	
	model := IPTTreeModelMock new. 
	messageTally := MessageTallyMock new. 

	messageTally tally: 51.
	model totalTime: 100.
	
	expected := ToolIcons testRedIcon bits.
	actual := (model getIcon: messageTally) bits.
	self assert: expected equals: actual