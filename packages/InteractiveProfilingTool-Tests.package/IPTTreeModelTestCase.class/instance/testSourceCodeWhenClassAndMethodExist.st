tests
testSourceCodeWhenClassAndMethodExist

	| compiledMethod tallyMock tree sourceCode wrappedTallyMock |
	
	compiledMethod :=  (DummyObject >> #dummyMethod).
	tallyMock := MessageTallyMock new method: compiledMethod.
	wrappedTallyMock := MessageTallyWrapperMock new messageTally: tallyMock.
	tree := IPTTreeModelMock new currentSelection: wrappedTallyMock.
	
	sourceCode := self dummyMethodSourceCode.
	
	self assert: sourceCode equals: tree selectedMessage.