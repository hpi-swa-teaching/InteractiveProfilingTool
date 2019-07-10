tests
testMatchesArgumentsWithGivenArguments

	| expectation message1 message2 |
	
	expectation := MockExpectation new
		selector: #sayHelloTo:;
		arguments: { #queen }
		yourself.
	
	message1 := Message selector: #sayHelloTo: argument: #queen.
	message2 := Message selector: #sayHelloTo: argument: #lothar.		

	self assert: (expectation matchesArguments: message1 arguments).
	self deny: (expectation matchesArguments: message2 arguments)