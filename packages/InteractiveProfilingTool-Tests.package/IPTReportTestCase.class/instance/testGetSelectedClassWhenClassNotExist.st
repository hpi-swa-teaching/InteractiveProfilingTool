tests
testGetSelectedClassWhenClassNotExist
	
	| compiledMethod tree class|
	
	compiledMethod := (Smalltalk classNamed: 'DummyClass') compiledMethodAt: #dummyMethodToProfile.
	tree := self treeFromCompiledMethod: compiledMethod.
		
	(Smalltalk classNamed: 'DummyClass') removeFromSystem.
	
	class := tree selectedClass.
	
	self buildDummyClass.
	
	self assert: class isNil
