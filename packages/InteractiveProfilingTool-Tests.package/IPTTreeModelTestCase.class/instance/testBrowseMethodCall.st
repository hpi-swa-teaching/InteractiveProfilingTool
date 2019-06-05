tests
testBrowseMethodCall
	
	| browser tree |
	
	tree := IPTTreeModelMock new 
		roots: {tallyObject};
		currentSelection: tallyObject.
		
	browser := tree browseMethodCall.
	
	[self assert: (browser isKindOf: Browser)]
		ensure: [browser dependents first delete]