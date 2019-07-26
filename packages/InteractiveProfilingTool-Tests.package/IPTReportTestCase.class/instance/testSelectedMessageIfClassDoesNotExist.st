tests
testSelectedMessageIfClassDoesNotExist

	| messageTallyWrapper |
	
	messageTallyWrapper := Mock expect: #classExists toReturn: false.
	model currentSelection: messageTallyWrapper.
	
	self assert: 'Class Missing' equals: model selectedMessage