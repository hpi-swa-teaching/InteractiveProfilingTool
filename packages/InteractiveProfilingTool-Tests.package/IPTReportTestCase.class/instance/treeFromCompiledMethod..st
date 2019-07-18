helpers
treeFromCompiledMethod: aCompiledMethod

	| tallyMock wrappedTallyMock tree |
	
	tallyMock := MessageTallyMock new 
		method: aCompiledMethod.
	wrappedTallyMock := IPTMessageTallyWrapper new
		messageTally: tallyMock.
	tree := IPTReportMock new
		currentSelection: wrappedTallyMock.
		
	^ tree