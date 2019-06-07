as yet unclassified
testCheckIfClassExists

	| tree tallyMock compiledMethod |
	
	compiledMethod := (BlockClosure >> #ensure:).
	
	tree := IPTTreeModelMock new.
	tallyMock := MessageTallyMock new.
	tallyMock method: compiledMethod.
	
	self assert: true equals: (tree checkIfClassExists: tallyMock).