tests
testGetIconIfBelowThreshold

	| model |
	
	model := IPTReportMock new.
	self assert: nil equals: (model getIcon: wrappedTallyWithLowRuntime)