tests
testMatchesArgumentsWithoutGivenArguments

	| expectation message1 message2 |

	expectation := MockExpectation new
		selector: #sayHelloTo:;
		yourself.
		
	message1 := Message selector: #sayHelloTo: argument: #queen.
	message2 := Message selector: #sayHelloTo: argument: #lothar.
	
	self assert: (expectation matchesArguments: message1).
	self assert: (expectation matchesArguments: message2)