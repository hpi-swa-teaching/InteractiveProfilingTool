tests
testGetIconIfBelowThreshold

	| model expected actual |
	
	model := IPTReportMock new.
	expected := model class emptyIcon.
	actual := model getIcon: wrappedTallyWithLowRuntime.
	
	self assert: expected equals: actual