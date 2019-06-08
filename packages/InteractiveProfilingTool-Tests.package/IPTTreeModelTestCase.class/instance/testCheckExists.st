as yet unclassified
testCheckExists

	| tree tallyMock compiledMethod |
	
	compiledMethod := (BlockClosure >> #ensure:).
	
	tree := IPTTreeModelMock new.
	tallyMock := MessageTallyMock new method: compiledMethod.
	
	self assert: (tree classExists: tallyMock)