tests
testSourceCodeWhenMethodDoesNotExistAnymore

	| compiledMethod tree source |
	
	compiledMethod := (DummyObject >> #dummyMethodToRemove).
	
	tree := self treeFromCompiledMethod: compiledMethod.
	
	DummyObject removeSelector: #dummyMethodToRemove.
	source := tree selectedMessage.
	
	DummyObject compile: self dummyMethodToRemoveSourceCode.
	
	self assert: source equals: 'Missing'