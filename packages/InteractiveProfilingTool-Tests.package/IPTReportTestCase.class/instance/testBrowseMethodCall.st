tests
testBrowseMethodCall
	
	| browser tree |
	
	tree := IPTReportMock new 
		userCallsRoots: {wrappedTally};
		currentSelection: wrappedTally.
		
	browser := tree browseMethodCall.
	
	[self assert: (browser isKindOf: Browser)]
		ensure: [browser dependents first delete]