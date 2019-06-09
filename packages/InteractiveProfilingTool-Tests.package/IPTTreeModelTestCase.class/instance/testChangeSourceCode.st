as yet unclassified
testChangeSourceCode

	|sourceCode tallyMock tree newSourceCode pluggableTextMorph compiledMethod |

	compiledMethod := (DummyObject >> #dummyMethodToBeChanged).
	tallyMock := MessageTallyMock new method: compiledMethod.
	tree := IPTTreeModelMock new currentSelection: tallyMock.
	newSourceCode := self dummyMethodToBeChangedNewSourceCode.
	pluggableTextMorph := PluggableTextMorph new. 
	tree contents: newSourceCode notifying: pluggableTextMorph.
	
	sourceCode := compiledMethod methodReference source.
	
	DummyObject compile: self dummyMethodToBeChangedOldSourceCode.
	
	self assert: sourceCode equals: newSourceCode