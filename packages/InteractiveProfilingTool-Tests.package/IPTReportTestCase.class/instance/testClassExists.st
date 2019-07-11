tests
testClassExists

	| tallyMock compiledMethod wrappedTallyMock |
	
	compiledMethod := (Smalltalk classNamed: 'DummyObject') compiledMethodAt: #dummyMethod.
	tallyMock := MessageTallyMock new method: compiledMethod.	
	wrappedTallyMock := MessageTallyWrapperMock new messageTally: tallyMock.
	
	self assert: wrappedTallyMock classExists