tests
testGetIconIfBelowThreshold

	| model |
	
	model := IPTTreeModelMock new.
	self assert: nil equals: (model getIcon: wrappedTallyWithLowRuntime)