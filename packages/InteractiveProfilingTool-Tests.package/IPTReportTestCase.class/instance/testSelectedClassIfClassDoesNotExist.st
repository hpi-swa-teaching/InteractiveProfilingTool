tests
testSelectedClassIfClassDoesNotExist
	
	| messageTallyWrapper|
	
	messageTallyWrapper := Mock expect: #classExists toReturn: false.
	model currentSelection: messageTallyWrapper.
	
	self assert: model selectedClass isNil
