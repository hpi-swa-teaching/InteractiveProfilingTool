tests
testMatchesSelector

	| expectation message1 message2 |

	expectation := MockExpectation new
		selector: #sayHello;
		yourself.
		
	message1 := Message selector: #sayHello.
	message2 := Message selector: #sayHelloTo: argument: #lothar.
	
	self assert: (expectation matchesSelector: message1 selector).
	self deny: (expectation matchesSelector: message2 selector)