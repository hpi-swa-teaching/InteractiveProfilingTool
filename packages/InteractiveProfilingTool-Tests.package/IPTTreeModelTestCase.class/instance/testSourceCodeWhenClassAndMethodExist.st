as yet unclassified
testSourceCodeWhenClassAndMethodExist

	| compiledMethod tree source |
	
	compiledMethod :=  (DummyObject >> #dummyMethod).
		
	tree := IPTTreeModelMock new.
	tree currentSelection: MessageTallyMock new.
	tree currentSelection method: compiledMethod.
	
	source := compiledMethod methodReference source.
	
	self assert: source equals: tree selectedMessage.