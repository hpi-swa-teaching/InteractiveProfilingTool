as yet unclassified
testGetIconIfEqualsThreshold

	| model messageTally actual expected |
	
	model := IPTTreeModelMock new. 
	messageTally := MessageTallyMock new. 

	messageTally tally: 50.
	model totalTime: 100.
	
	expected := ToolIcons testRedIcon bits.
	actual := (model getIcon: messageTally) bits.
	self assert: expected equals: actual