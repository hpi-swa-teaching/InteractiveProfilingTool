tests
testSelectedClassIfClassExists
	
	| messageTallyWrapper |

	messageTallyWrapper := Mock new
		expect: #classExists toReturn: true;
		expect: #selectorIsDoIt toReturn: false;
		expect: #getClass toReturn: Boolean;
		expect: #getSelector toReturn: #isBoolean.
	
	model currentSelection: messageTallyWrapper.
	
	self assert: Boolean equals: model selectedClass