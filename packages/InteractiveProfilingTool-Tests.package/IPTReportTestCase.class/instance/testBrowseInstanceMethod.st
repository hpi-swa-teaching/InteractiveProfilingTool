tests
testBrowseInstanceMethod
	
	| browser tree |
	
	tree := IPTReportMock new 
		userCallsRoots: {wrappedTally};
		currentSelection: wrappedTally.
		
	browser := tree browseMethodCall.
	
	[self assert: (browser selectedMessageName) equals: #ifTrue:.
	self assert: (browser selectedClassName) equals: #Boolean]
		ensure: [browser dependents first delete]