tests
testChangeSourceCode

	|sourceCode tree newSourceCode pluggableTextMorph compiledMethod oldSourceCode|

	compiledMethod := (DummyObject >> #dummyMethodToBeChanged).
	newSourceCode := self dummyMethodToBeChangedNewSourceCode.
	oldSourceCode := self dummyMethodToBeChangedOldSourceCode.
	pluggableTextMorph := self createPluggableTextMorphMock. 
	
	tree := IPTTreeModelMock new 
		currentSelection: (MessageTallyMock new method: compiledMethod).
	tree contents: newSourceCode notifying: pluggableTextMorph.
	
	sourceCode := compiledMethod methodReference source.
	
	DummyObject compile: oldSourceCode.
	
	self assert: sourceCode equals: newSourceCode