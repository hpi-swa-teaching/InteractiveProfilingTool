tests
testChangeSourceCode
	
	|sourceCode tree newSourceCode pluggableTextMorph compiledMethod oldSourceCode messageTallyWrapper messageTally|

	compiledMethod := (Smalltalk classNamed: #DummyObject) >> #dummyMethodToBeChanged.
	newSourceCode := self dummyMethodToBeChangedNewSourceCode.
	oldSourceCode := self dummyMethodToBeChangedOldSourceCode.
	pluggableTextMorph := PluggableTextMorph new. 
	
	messageTally := MessageTallyMock new method: compiledMethod.
	messageTallyWrapper := IPTMessageTallyWrapper new messageTally: messageTally.
	
	tree := IPTReportMock new 
		currentSelection: messageTallyWrapper.
	
	tree contents: newSourceCode notifying: pluggableTextMorph.
	
	sourceCode := compiledMethod methodReference source.
	
	(Smalltalk classNamed: #DummyObject) compile: oldSourceCode.
	
	self assert: sourceCode equals: newSourceCode