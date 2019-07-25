tests
testChangeSourceCodeToNotifying
	
	| messageTallyWrapper controller newSource currentSource |
	
	self buildDummyClass.
	
	newSource := self dummyMethodNewSourceCode.
	controller := PluggableTextMorph new.
	
	messageTallyWrapper := Mock new
		expect: #classExists toReturn: true;
		expect: #getClass toReturn: self dummyClass;
		expect: #getSelector toReturn: #dummyMethod.
	
	model currentSelection: messageTallyWrapper.
	model changeSourceCodeTo: newSource notifying: controller.
	
	currentSource := self dummyClass sourceMethodAt: #dummyMethod.
	
	self removeDummyClass.
	
	self assert: newSource equals: currentSource asString.