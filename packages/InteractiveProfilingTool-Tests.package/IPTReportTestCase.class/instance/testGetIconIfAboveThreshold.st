tests
testGetIconIfAboveThreshold

	| model expected actual |
	
	model := IPTReportMock new.
	expected := model class highRuntimeIcon bits.
	actual := (model getIcon: wrappedTally) bits.
	
	self assert: expected equals: actual