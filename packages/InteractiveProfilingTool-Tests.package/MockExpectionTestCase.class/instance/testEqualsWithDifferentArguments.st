tests
testEqualsWithDifferentArguments

	| expectation1 expectation2 |

	expectation1 := MockExpectation new
		selector: #sayHelloTo:;
		arguments: #(queen);
		returnValue: 'Good morning, Your Majesty';
		yourself.
		
	expectation2 := MockExpectation new
		selector: #sayHelloTo:;
		arguments: #(lothar);
		returnValue: 'Moin Lothar, altes Haus!';
		yourself.
		
	self deny: expectation1 = expectation2.
	self deny: expectation1 hash == expectation2 hash