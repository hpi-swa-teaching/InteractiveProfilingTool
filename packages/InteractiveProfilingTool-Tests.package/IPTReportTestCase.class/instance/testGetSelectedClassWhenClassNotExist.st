tests
testGetSelectedClassWhenClassNotExist
	
	| compiledMethod tree class|
	
	compiledMethod := (DummyClass >> #dummyMethodToProfile).
	tree := self treeFromCompiledMethod: compiledMethod.
		
	DummyClass removeFromSystem.
	
	class := tree selectedClass.
	
	self buildDummyClass.
	
	self assert: class isNil
