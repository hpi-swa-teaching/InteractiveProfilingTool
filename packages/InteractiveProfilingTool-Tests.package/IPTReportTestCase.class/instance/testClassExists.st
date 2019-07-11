tests
testClassExists

	| tallyMock compiledMethod wrapedTallyMock |
	
	compiledMethod := (Smalltalk classNamed: 'DummyObject') compiledMethodAt: #dummyMethod.
	tallyMock := MessageTallyMock new method: compiledMethod.	
	wrapedTallyMock := MessageTallyWrapperMock new messageTally: tallyMock.
	
	self assert: wrapedTallyMock classExists