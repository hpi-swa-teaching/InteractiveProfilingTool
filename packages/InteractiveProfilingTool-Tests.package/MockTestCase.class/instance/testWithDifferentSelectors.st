tests
testWithDifferentSelectors

	| mock |

	mock := Mock new.
	mock expect: #sayHello toReturn: 'Hello!'.
	mock expect: #sayBonjour toReturn: 'Bonjour!'.
	
	self assert: 'Hello!' equals: mock sayHello.
	self assert: 'Bonjour!' equals: mock sayBonjour