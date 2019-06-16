tests
testGetIconIfEqualsThreshold

	| model actual expected |
	
	model := IPTTreeModelMock new.
	expected := model class highRuntimeIcon bits.
	actual := (model getIcon: wrappedTallyWithHalfRuntime) bits.
	
	self assert: expected equals: actual