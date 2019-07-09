mocking
expect: aSymbol withArguments: anArray toReturn: anObject

	| expectation |
	
	expectation := MockExpectation new
		selector: aSymbol;
		arguments: anArray;
		returnValue: anObject.
		
	self expectations add: expectation