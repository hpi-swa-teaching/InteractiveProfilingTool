tests
testSelectedMessageIfClassAndMethodExist

	| messageTallyWrapper sourceCode |

	messageTallyWrapper := Mock new
		expect: #classExists toReturn: true;
		expect: #selectorIsDoIt toReturn: false;
		expect: #getClass toReturn: Boolean;
		expect: #getSelector toReturn: #isBoolean.
	
	model currentSelection: messageTallyWrapper.
	sourceCode := Boolean sourceMethodAt: #isBoolean.

	self assert: sourceCode equals: model selectedMessage.