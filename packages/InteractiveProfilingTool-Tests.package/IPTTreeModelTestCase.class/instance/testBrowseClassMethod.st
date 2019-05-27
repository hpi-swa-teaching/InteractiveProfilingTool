tests
testBrowseClassMethod
	
	| tally browser tree tallyForClassMethodCall |
	
	tally := IPTTreeModelTestCase constructMessageTallyFrom: [IPTTreeModelTestCase computeSomething].
	tallyForClassMethodCall := tally receivers first.
	
	tree := IPTTreeModelMock new 
		currentSelection: tallyForClassMethodCall.
	browser := tree browseMethodCall.
	
	[self assert: (browser selectedMessageName) equals: #constructMessageTallyFrom:. 
	self assert: (browser selectedClassName) equals: #IPTTreeModelTestCase] 
		ensure: [browser dependents first delete]
	
