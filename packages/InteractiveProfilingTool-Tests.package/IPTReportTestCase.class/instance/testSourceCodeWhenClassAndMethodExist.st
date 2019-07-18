tests
testSourceCodeWhenClassAndMethodExist

	| compiledMethod tree sourceCode |
	
	compiledMethod := (Smalltalk classNamed: 'DummyObject') compiledMethodAt: #dummyMethod.
	tree := self treeFromCompiledMethod: compiledMethod.
	sourceCode := self dummyMethodSourceCode.

	self assert: sourceCode equals: tree selectedMessage.