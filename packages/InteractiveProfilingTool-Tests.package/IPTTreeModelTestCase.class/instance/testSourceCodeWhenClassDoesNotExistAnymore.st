as yet unclassified
testSourceCodeWhenClassDoesNotExistAnymore

	| compiledMethod tree source |
	
	compiledMethod := (DummyClass >> #dummyMethodToProfile).
	
	tree := self treeFromCompiledMethod: compiledMethod.
		
	DummyClass removeFromSystem.
	source := tree selectedMessage.
	
	ClassBuilder new 
		superclass: Object 
		subclass: #DummyClass 
		instanceVariableNames: '' 
		classVariableNames: '' 
		poolDictionaries: '' 
		category: 'InteractiveProfilingTool-Tests'.
	
	DummyClass compile: self dummyMethodToProfileSourceCode.
	
	self assert: source equals: 'Missing'
	