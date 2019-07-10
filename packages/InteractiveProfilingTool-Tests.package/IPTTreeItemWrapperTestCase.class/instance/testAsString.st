tests
testAsString

	wrappedTally expect: #getLabel toReturn: '50.2 % {10 ms} Boolean >> ifTrue:'.
	
	self assert: '50.2 % {10 ms} Boolean >> ifTrue:' equals: treeItemWrapper asString