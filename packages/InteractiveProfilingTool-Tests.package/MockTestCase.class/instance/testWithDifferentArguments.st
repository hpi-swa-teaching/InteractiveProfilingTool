tests
testWithDifferentArguments

	| mock |

	mock := Mock new.
	mock expect: #sayHelloIn: withArguments: #(english) toReturn: 'Hello!'.
	mock expect: #sayHelloIn: withArguments: #(french) toReturn: 'Bonjour!'.
	
	self assert: 'Hello!' equals: (mock sayHelloIn: #english).
	self assert: 'Bonjour!' equals: (mock sayHelloIn: #french)