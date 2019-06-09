as yet unclassified
testGetSelectedClassWhenClassNotExist

	| tallyMock compiledMethod tree class|
	
	compiledMethod := (DummyClass >> #dummyMethodToProfile).
	tallyMock := MessageTallyMock new method: compiledMethod.
	tree := IPTTreeModelMock new currentSelection: tallyMock.
		
	DummyClass removeFromSystem.
	
	class := tree selectedClass.
	
	ClassBuilder new 
		superclass: Object 
		subclass: #DummyClass 
		instanceVariableNames: '' 
		classVariableNames: '' 
		poolDictionaries: '' 
		category: 'InteractiveProfilingTool-Tests'.
	
	DummyClass compile: self dummyMethodToProfileSourceCode.
	
	self assert: class isNil