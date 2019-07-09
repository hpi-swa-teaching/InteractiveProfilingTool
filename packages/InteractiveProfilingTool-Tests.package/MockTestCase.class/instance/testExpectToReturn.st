tests
testExpectToReturn

	| mock |

	mock := Mock new.
	mock expect: #sayHello toReturn: 'Hello!'.
	
	self assert: 1 equals: mock expectations size.
	self assert: 'Hello!' equals: mock expectations asArray first returnValue