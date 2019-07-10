tests
testEqualsWithDifferentSelectors

	| expectation1 expectation2 |

	expectation1 := MockExpectation new
		selector: #greetTheQueen;
		returnValue: 'Good morning, Your Majesty';
		yourself.
		
	expectation2 := MockExpectation new
		selector: #greetLothar;
		returnValue: 'Na Lothar, alte Socke!';
		yourself.
		
	self deny: expectation1 = expectation2.
	self deny: expectation1 hash == expectation2 hash