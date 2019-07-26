tests
testSelectedMessageIfMethodDoesNotExist
	
	| messageTallyWrapper |

	messageTallyWrapper := Mock new
		expect: #classExists toReturn: true;
		expect: #selectorIsDoIt toReturn: false;
		expect: #getClass toReturn: Boolean;
		expect: #getSelector toReturn: #discodiscopartyparty.
		
	model currentSelection: messageTallyWrapper.
	
	self assert: 'Method Missing' equals: model selectedMessage