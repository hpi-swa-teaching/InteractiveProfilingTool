tests
testSourceCodeWhenMethodDoesNotExistAnymore
	
	" TODO fix this test
	
	| compiledMethod tree sourceCode |
	
	compiledMethod := (DummyObject >> #dummyMethodToRemove).
	
	tree := self treeFromCompiledMethod: compiledMethod.
	
	DummyObject removeSelector: #dummyMethodToRemove.
	sourceCode := tree selectedMessage.
	
	DummyObject compile: self dummyMethodToRemoveSourceCode.
	
	self assert: sourceCode equals: 'Missing'
	"