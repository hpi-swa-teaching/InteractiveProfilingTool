tests
testBrowseMethodCall
	
	| messageTallyWrapper browser |
	
	messageTallyWrapper := Mock new
		expect: #getClass toReturn: Boolean;
		expect: #getSelectorName toReturn: 'ifTrue:'.
		
	model currentSelection: messageTallyWrapper.
	browser := model browseMethodCall.
	browser dependents first delete.
	
	self assert: #ifTrue: equals: (browser selectedMessageName).
	self assert: #Boolean equals: (browser selectedClassName).