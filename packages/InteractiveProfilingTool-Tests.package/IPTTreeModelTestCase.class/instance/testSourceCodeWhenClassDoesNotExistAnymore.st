as yet unclassified
testSourceCodeWhenClassDoesNotExistAnymore

	| tallyMock compiledMethod tree source |
	
	compiledMethod := (DummyClass >> #dummyMethodToProfile).
	
	tallyMock := MessageTallyMock new method: compiledMethod.
	 
	tree := IPTTreeModelMock new currentSelection: tallyMock.
		
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
	