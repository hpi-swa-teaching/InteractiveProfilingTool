tests
testCheckExists

	| tree tallyMock compiledMethod wrapedTallyMock |
	
	tree := IPTReportMock new.
	compiledMethod := (DummyObject >> #dummyMethod).
	tallyMock := MessageTallyMock new method: compiledMethod.	
	wrapedTallyMock := MessageTallyWrapperMock new messageTally: tallyMock.
	
	self assert: (tree classExists: wrapedTallyMock)