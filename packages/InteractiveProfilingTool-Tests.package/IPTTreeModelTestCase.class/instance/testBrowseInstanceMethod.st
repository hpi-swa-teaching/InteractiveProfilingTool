tests
testBrowseInstanceMethod
	
	| browser tree |
	
	tree := IPTTreeModelMock new 
		roots: {tallyObject};
		currentSelection: tallyObject.
		
	browser := tree browseMethodCall.
	
	[self assert: (browser selectedMessageName) equals: #setUp.
	self assert: (browser selectedClassName) equals: #IPTTreeModelTestCase.]
		ensure: [browser dependents first delete]