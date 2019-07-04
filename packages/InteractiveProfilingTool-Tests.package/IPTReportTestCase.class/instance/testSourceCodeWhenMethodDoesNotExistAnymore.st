tests
testSourceCodeWhenMethodDoesNotExistAnymore
	
	| compiledMethod tree sourceCode |
	
	compiledMethod := (Smalltalk classNamed: 'DummyObject') compiledMethodAt: #dummyMethodToRemove.
	tree := self treeFromCompiledMethod: compiledMethod.
	(Smalltalk classNamed: 'DummyObject') removeSelector: #dummyMethodToRemove.
	sourceCode := tree selectedMessage.
	
	self assert: sourceCode equals: 'Method Missing'
	