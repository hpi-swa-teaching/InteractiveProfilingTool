tests
testSelectedMessageIfClassAndMethodExist

	| messageTallyWrapper sourceCode |

	messageTallyWrapper := Mock new
		expect: #classExists toReturn: true;
		expect: #selectorIsDoIt toReturn: false;
		expect: #getClass toReturn: Boolean;
		expect: #getSelector toReturn: #ifTrue:.
	
	model currentSelection: messageTallyWrapper.
	sourceCode := Boolean sourceMethodAt: #ifTrue:.

	self assert: sourceCode equals: model selectedMessage.