tests
testChangeSourceCode

	"incompatible with Squeak 5.0
	|sourceCode tree newSourceCode pluggableTextMorph compiledMethod oldSourceCode messageTallyWrapper messageTally|

	compiledMethod := (DummyObject >> #dummyMethodToBeChanged).
	newSourceCode := self dummyMethodToBeChangedNewSourceCode.
	oldSourceCode := self dummyMethodToBeChangedOldSourceCode.
	pluggableTextMorph := PluggableTextMorph new. 
	
	messageTally := MessageTallyMock new method: compiledMethod.
	messageTallyWrapper := IPTMessageTallyWrapper new messageTally: messageTally.
	
	tree := IPTTreeModelMock new 
		currentSelection: messageTallyWrapper.
	
	tree contents: newSourceCode notifying: pluggableTextMorph.
	
	sourceCode := compiledMethod methodReference source.
	
	DummyObject compile: oldSourceCode.
	
	self assert: sourceCode equals: newSourceCode
	"