tests
testBrowseClassMethod
	
	| tally browser tree tallyForClassMethodCall |
	
	tally := IPTTreeModelMock constructMessageTallyFrom: [IPTTreeModelMock computeSomething].
	tallyForClassMethodCall := tally receivers first.
	
	tree := IPTTreeModelMock new 
		currentSelection: tallyForClassMethodCall.
	browser := tree browseMethodCall.
	
	[self assert: browser selectedMessageName = #constructMessageTallyFrom:. 
	self assert: browser selectedClassName = #IPTTreeModelMock] 
		ensure: [browser dependents first delete]
	
