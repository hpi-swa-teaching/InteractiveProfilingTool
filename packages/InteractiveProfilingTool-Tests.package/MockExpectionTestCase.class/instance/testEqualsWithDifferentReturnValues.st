tests
testEqualsWithDifferentReturnValues

	| expectation1 expectation2 |

	expectation1 := MockExpectation new
		selector: #sayHelloTo:;
		arguments: { 'Lothar Matthäus' };
		returnValue: 'Hallo Lothar!';
		yourself.
		
	expectation2 := MockExpectation new
		selector: #sayHelloTo:;
		arguments: { 'Lothar Matthäus' };
		returnValue: 'Moin Lothar!';
		yourself.
		
	self assert: expectation1 = expectation2.