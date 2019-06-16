tests
testSourceCodeWhenClassDoesNotExistAnymore

	| compiledMethod tree sourceCode sourceCodeFromDeletedMethod |
	
	compiledMethod := (DummyClass >> #dummyMethodToProfile).
	tree := self treeFromCompiledMethod: compiledMethod.
	sourceCodeFromDeletedMethod := self dummyMethodToProfileSourceCode.
		
	DummyClass removeFromSystem.
	
	sourceCode := tree selectedMessage.
	
	ClassBuilder new 
		superclass: Object 
		subclass: #DummyClass 
		instanceVariableNames: '' 
		classVariableNames: '' 
		poolDictionaries: '' 
		category: 'InteractiveProfilingTool-Tests'.
	
	DummyClass compile: sourceCodeFromDeletedMethod.
	
	self assert: sourceCode equals: 'Missing'