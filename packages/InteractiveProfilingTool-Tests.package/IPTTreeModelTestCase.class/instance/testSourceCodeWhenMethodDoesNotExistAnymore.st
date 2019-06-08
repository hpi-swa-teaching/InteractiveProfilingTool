as yet unclassified
testSourceCodeWhenMethodDoesNotExistAnymore

	| messageTallyMock compiledMethod tree source |
	
	compiledMethod := (DummyObject >> #dummyMethodToRemove).
	
	messageTallyMock := MessageTallyMock new.
	messageTallyMock method: compiledMethod.
	 
	tree := IPTTreeModelMock new.
	tree currentSelection: messageTallyMock.
		
	DummyObject removeSelector: #dummyMethodToRemove.
	source := tree selectedMessage.
	
	DummyObject compile: 'dummyMethodToRemove
   	^ 1'.
	
	self assert: source equals: 'Missing'