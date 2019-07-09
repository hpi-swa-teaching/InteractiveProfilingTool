tests
testEquals

	| expectation1 expectation2 |

	expectation1 := MockExpectation new
		selector: #sayHelloTo;
		arguments: { 'Lothar Matthäus' };
		yourself.
		
	expectation2 := MockExpectation new
		selector: #sayHelloTo;
		arguments: { 'Lothar Matthäus' };
		yourself.
		
	self assert: expectation1 = expectation2.