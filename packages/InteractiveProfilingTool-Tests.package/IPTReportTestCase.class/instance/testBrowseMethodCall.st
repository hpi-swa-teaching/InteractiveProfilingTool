tests
testBrowseMethodCall
	
	| messageTallyWrapper browser |
	
	messageTallyWrapper := Mock new
		expect: #getClass toReturn: Boolean;
		expect: #getSelectorName toReturn: 'isBoolean'.
		
	model currentSelection: messageTallyWrapper.
	browser := model browseMethodCall.
	
	self assert: #isBoolean equals: (browser selectedMessageName).
	self assert: #Boolean equals: (browser selectedClassName).
	
	browser dependents first delete