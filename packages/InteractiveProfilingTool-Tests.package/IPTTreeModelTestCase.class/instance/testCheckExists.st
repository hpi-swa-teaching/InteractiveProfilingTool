tests
testCheckExists

	| tree tallyMock compiledMethod |
	
	tree := IPTTreeModelMock new.
	compiledMethod := (DummyObject >> #dummyMethod).
	tallyMock := MessageTallyMock new method: compiledMethod.	
	
	self assert: (tree classExists: tallyMock)