tests
testSourceCodeWhenClassDoesNotExistAnymore

	| compiledMethod tree sourceCode sourceCodeFromDeletedMethod |
	
	compiledMethod := (DummyClass >> #dummyMethodToProfile).
	tree := self treeFromCompiledMethod: compiledMethod.
	sourceCodeFromDeletedMethod := self dummyMethodToProfileSourceCode.
	
	DummyClass removeFromSystem.
	sourceCode := tree selectedMessage.
	
	self buildDummyClass. 
	
	DummyClass compile: sourceCodeFromDeletedMethod.
	
	self assert: sourceCode equals: 'Class Missing'
