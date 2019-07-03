tests
testShouldBeHighlighted

	self assert: wrappedTallyMock shouldBeHighlighted.
	self deny: wrappedTallyMockWithLowRuntime shouldBeHighlighted