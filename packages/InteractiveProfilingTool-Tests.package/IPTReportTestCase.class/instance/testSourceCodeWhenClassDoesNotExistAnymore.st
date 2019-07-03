tests
testSourceCodeWhenClassDoesNotExistAnymore

	| compiledMethod tree sourceCode |
	
	compiledMethod := (DummyClass >> #dummyMethodToProfile).
	tree := self treeFromCompiledMethod: compiledMethod.
	
	DummyClass removeFromSystem.
	sourceCode := tree selectedMessage.
	
	self buildDummyClass.
	
	self assert: sourceCode equals: 'Class Missing'
