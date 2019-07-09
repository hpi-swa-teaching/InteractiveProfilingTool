tests
testEqualsWithoutArguments

	| expectation1 expectation2 |

	expectation1 := MockExpectation new
		selector: #sayHello;
		yourself.
		
	expectation2 := MockExpectation new
		selector: #sayHello;
		yourself.
		
	self assert: expectation1 = expectation2.