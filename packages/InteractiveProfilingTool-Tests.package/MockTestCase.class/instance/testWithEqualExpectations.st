tests
testWithEqualExpectations

	| mock |

	mock := Mock new.
	mock expect: #sayHello toReturn: 'Hello!'.
	mock expect: #sayHello toReturn: 'Bonjour!'.
	
	self assert: 1 equals: mock expectations size.
	self assert: 'Hello!' equals: mock sayHello