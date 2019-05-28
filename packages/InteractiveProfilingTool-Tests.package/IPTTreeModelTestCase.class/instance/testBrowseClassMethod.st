tests
testBrowseClassMethod
	
	| tally browser tree tallyForClassMethodCall |
	
	tally := IPTTreeModelTestCase constructMessageTallyFrom: [IPTTreeModelTestCase waitOneSecond].
	tallyForClassMethodCall := tally receivers last.
	
	tree := IPTTreeModelMock new 
		currentSelection: tallyForClassMethodCall.
	browser := tree browseMethodCall.
	
	[self assert: (browser selectedMessageName) equals: #constructMessageTallyFrom:. 
	self assert: (browser selectedClassName) equals: #IPTTreeModelTestCase] 
		ensure: [browser dependents first delete]
	
