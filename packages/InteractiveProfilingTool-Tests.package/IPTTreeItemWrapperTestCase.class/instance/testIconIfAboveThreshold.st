tests
testIconIfAboveThreshold
	
	| treeItem expected actual |
	
	treeItem := IPTTreeItemWrapper with: (wrappedTally totalTallyCountOfOverallTree: 100).
	expected := treeItem class highRuntimeIcon bits.
	actual := treeItem icon bits.
	
	self assert: expected equals: actual
	