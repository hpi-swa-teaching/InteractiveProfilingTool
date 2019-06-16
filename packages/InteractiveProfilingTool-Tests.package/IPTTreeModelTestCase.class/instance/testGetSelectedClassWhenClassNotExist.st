tests
testGetSelectedClassWhenClassNotExist

	" TODO fix this test
	
	| tallyMock compiledMethod tree class sourceCode|
	
	compiledMethod := (DummyClass >> #dummyMethodToProfile).
	tallyMock := MessageTallyMock new method: compiledMethod.
	tree := IPTTreeModelMock new currentSelection: tallyMock.
	sourceCode := self dummyMethodToProfileSourceCode.
		
	DummyClass removeFromSystem.
	
	class := tree selectedClass.
	
	ClassBuilder new 
		superclass: Object 
		subclass: #DummyClass 
		instanceVariableNames: '' 
		classVariableNames: '' 
		poolDictionaries: '' 
		category: 'InteractiveProfilingTool-Tests'.
	
	DummyClass compile: sourceCode.
	
	self assert: class isNil
	"