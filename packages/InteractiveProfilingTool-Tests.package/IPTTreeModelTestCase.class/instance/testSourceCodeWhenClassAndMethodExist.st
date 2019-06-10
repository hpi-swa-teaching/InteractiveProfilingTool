tests
testSourceCodeWhenClassAndMethodExist

	| compiledMethod tallyMock tree sourceCode |
	
	compiledMethod :=  (DummyObject >> #dummyMethod).
	tallyMock := MessageTallyMock new method: compiledMethod.
	tree := IPTTreeModelMock new currentSelection: tallyMock.
	
	sourceCode := self dummyMethodSourceCode.
	
	self assert: sourceCode equals: tree selectedMessage.