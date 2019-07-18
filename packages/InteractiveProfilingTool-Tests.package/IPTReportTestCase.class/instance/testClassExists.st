tests
testClassExists

	| tree tallyMock compiledMethod wrapedTallyMock |
	
	tree := IPTReportMock new.
	compiledMethod := (Smalltalk classNamed: 'DummyObject') compiledMethodAt: #dummyMethod.
	tallyMock := MessageTallyMock new method: compiledMethod.	
	wrapedTallyMock := MessageTallyWrapperMock new messageTally: tallyMock.
	
	self assert: (tree classExists: wrapedTallyMock)