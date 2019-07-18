tests
testGetLeaves

	| mock leaves expected |
	
	mock := MessageTallyWrapperMock new
		receivers: { wrappedTallyMock };
		totalTimeOfOverallTree: 100.
	
	leaves := mock getLeaves.
	expected := OrderedCollection with: wrappedTallyMock.
	
	self assert: expected equals: leaves
	