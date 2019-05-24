tests
testBrowseClassMethod
	
	| tally browser tree |
	
	tally := IPTTreeModelMock constructMessageTallyFrom: [IPTTreeModelMock computeSomething].
	
	tree := IPTTreeModelMock new 
		currentSelection: tally receivers first.
	
	browser := tree browseMethodCall.
	
	[self assert: browser selectedMessageName = #constructMessageTallyFrom:. 
	self assert: browser selectedClassName = #IPTTreeModelMock] 
		ensure: [browser dependents first delete]
	
