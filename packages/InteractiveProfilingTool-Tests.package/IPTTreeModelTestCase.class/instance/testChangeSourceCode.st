as yet unclassified
testChangeSourceCode

	|sourceCode tree newSourceCode pluggableTextMorph compiledMethod |

	compiledMethod := (DummyObject >> #dummyMethodToBeChanged).
	newSourceCode := self dummyMethodToBeChangedNewSourceCode.
	pluggableTextMorph := self createPluggableTextMorphMock. 
	
	tree := IPTTreeModelMock new 
		currentSelection: (MessageTallyMock new method: compiledMethod);
		contents: newSourceCode notifying: pluggableTextMorph.
	
	sourceCode := compiledMethod methodReference source.
	
	DummyObject compile: self dummyMethodToBeChangedOldSourceCode.
	
	self assert: sourceCode equals: newSourceCode