tests
testBrowseMethodCall
	
	| browser tree |
	
	tree := IPTTreeModelMock new 
		roots: {wrappedTally};
		currentSelection: wrappedTally.
		
	browser := tree browseMethodCall.
	
	[self assert: (browser isKindOf: Browser)]
		ensure: [browser dependents first delete]