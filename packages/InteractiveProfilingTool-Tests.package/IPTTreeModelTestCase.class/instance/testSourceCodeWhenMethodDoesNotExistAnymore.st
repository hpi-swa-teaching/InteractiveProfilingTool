as yet unclassified
testSourceCodeWhenMethodDoesNotExistAnymore

	| tallyMock compiledMethod tree source |
	
	compiledMethod := (DummyObject >> #dummyMethodToRemove).
	
	tallyMock := MessageTallyMock new.
	tallyMock method: compiledMethod.
	 
	tree := IPTTreeModelMock new.
	tree currentSelection: tallyMock.
		
	DummyObject removeSelector: #dummyMethodToRemove.
	source := tree selectedMessage.
	
	DummyObject compile: self dummyMethodToRemoveSourceCode.
	
	self assert: source equals: 'Missing'