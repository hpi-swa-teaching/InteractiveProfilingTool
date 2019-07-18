tests
testSourceCodeWhenClassDoesNotExistAnymore

	| compiledMethod tree sourceCode |
	
	compiledMethod := (Smalltalk classNamed: 'DummyClass') compiledMethodAt:  #dummyMethodToProfile.
	tree := self treeFromCompiledMethod: compiledMethod.
	
	(Smalltalk classNamed: 'DummyClass') removeFromSystem.
	sourceCode := tree selectedMessage.
	
	self buildDummyClass.
	
	self assert: sourceCode equals: 'Class Missing'
