tests
testSourceCodeWhenClassAndMethodExist

	| compiledMethod tallyMock tree source |
	
	compiledMethod :=  (DummyObject >> #dummyMethod).
	tallyMock := MessageTallyMock new method: compiledMethod.
	tree := IPTTreeModelMock new currentSelection: tallyMock.
	
	source := compiledMethod methodReference source.
	
	self assert: source equals: tree selectedMessage.