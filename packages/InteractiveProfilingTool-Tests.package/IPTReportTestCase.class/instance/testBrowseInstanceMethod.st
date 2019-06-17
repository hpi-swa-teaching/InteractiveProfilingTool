tests
testBrowseInstanceMethod
	
	| browser tree |
	
	tree := IPTReportMock new 
		roots: {wrappedTally};
		currentSelection: wrappedTally.
		
	browser := tree browseMethodCall.
	
	[self assert: (browser selectedMessageName) equals: #ifTrue:.
	self assert: (browser selectedClassName) equals: #Boolean]
		ensure: [browser dependents first delete]