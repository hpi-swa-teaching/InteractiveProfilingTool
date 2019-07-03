tests
testSourceCodeWhenMethodDoesNotExistAnymore
	
	| compiledMethod tree sourceCode |
	
	compiledMethod := (DummyObject >> #dummyMethodToRemove).
	tree := self treeFromCompiledMethod: compiledMethod.
	DummyObject removeSelector: #dummyMethodToRemove.
	sourceCode := tree selectedMessage.
	
	self assert: sourceCode equals: 'Method Missing'
	