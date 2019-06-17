tests
testGetSelectedClassWhenClassNotExist
	
	| compiledMethod tree class sourceCode|
	
	compiledMethod := (DummyClass >> #dummyMethodToProfile).
	tree := self treeFromCompiledMethod: compiledMethod.
	sourceCode := self dummyMethodToProfileSourceCode.
		
	DummyClass removeFromSystem.
	
	class := tree selectedClass.
	
	self buildDummyClass.
	
	DummyClass compile: sourceCode.
	
	self assert: class isNil
