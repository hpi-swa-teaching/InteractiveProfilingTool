tests
testSourceCodeWhenClassAndMethodExist

	| compiledMethod tree sourceCode |
	
	compiledMethod :=  (DummyObject >> #dummyMethod).
	tree := self treeFromCompiledMethod: compiledMethod.
	sourceCode := self dummyMethodSourceCode.
	
	self assert: sourceCode equals: tree selectedMessage.