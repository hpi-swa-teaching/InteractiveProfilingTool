tests
testHasHighRuntime

	self assert: wrappedTallyMock hasHighRuntime.
	self deny: wrappedTallyMockWithLowRuntime hasHighRuntime