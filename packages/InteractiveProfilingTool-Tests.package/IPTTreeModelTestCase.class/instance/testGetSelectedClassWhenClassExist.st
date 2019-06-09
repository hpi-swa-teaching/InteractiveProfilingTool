as yet unclassified
testGetSelectedClassWhenClassExist
	
	| tallyMock tree  compiledMethod class |

	compiledMethod := (DummyObject >> #dummyMethod).
	class := compiledMethod methodClass.
	tallyMock := MessageTallyMock new method: compiledMethod.
	tree := IPTTreeModelMock new currentSelection: tallyMock.
	
	self assert: class equals: (tree selectedClass)