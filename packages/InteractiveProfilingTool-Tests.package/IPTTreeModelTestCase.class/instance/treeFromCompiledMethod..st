helpers
treeFromCompiledMethod: aCompiledMethod

	| tallyMock tree |
	
	tallyMock := MessageTallyMock new 
		method: aCompiledMethod.
	 
	tree := IPTTreeModelMock new
		currentSelection: tallyMock.
		
	^ tree