tests
testIconIfAboveThreshold
	
	| expected actual |
	
	wrappedTally expect: #hasHighRuntime toReturn: true.
	
	expected := IPTTreeItemWrapper highRuntimeIcon bits.
	actual := treeItemWrapper icon bits.
	
	self assert: expected equals: actual
	