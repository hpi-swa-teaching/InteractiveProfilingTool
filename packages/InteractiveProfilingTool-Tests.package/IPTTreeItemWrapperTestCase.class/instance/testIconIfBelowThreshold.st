tests
testIconIfBelowThreshold

	| expected actual |
	
	wrappedTally expect: #hasHighRuntime toReturn: false.
	
	expected := IPTTreeItemWrapper emptyIcon.
	actual := treeItemWrapper icon.
	
	self assert: expected equals: actual
	