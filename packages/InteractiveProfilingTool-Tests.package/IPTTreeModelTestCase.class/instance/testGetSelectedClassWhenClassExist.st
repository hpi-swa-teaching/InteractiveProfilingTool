as yet unclassified
testGetSelectedClassWhenClassExist
	
	| tallyMock tree  compiledMethod class |

	compiledMethod := (DummyObject >> #dummyMethod).
	tallyMock := MessageTallyMock new method: compiledMethod.
	tree := IPTTreeModelMock new currentSelection: tallyMock.
	class := compiledMethod methodClass.
	
	self assert: class equals: (tree selectedClass)