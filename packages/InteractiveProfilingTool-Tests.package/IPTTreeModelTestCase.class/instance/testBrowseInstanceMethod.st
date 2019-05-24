tests
testBrowseInstanceMethod
	
	| browser tree |
	
	tree := IPTTreeModelMock new 
		roots: {tallyObject};
		currentSelection: tallyObject.
		
	browser := tree browseMethodCall.
	
	self assert: browser selectedMessageName = #setUp.
	self assert: browser selectedClassName = #IPTTreeModelTestCase.
	
	browser dependents first delete