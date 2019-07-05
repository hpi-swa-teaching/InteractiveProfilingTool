as yet unclassified
testIconIfEqualsThreshold

	| treeItem actual expected |
	
	treeItem := IPTTreeItemWrapper with: (wrappedTally totalTimeOfOverallTree: 140).
	expected := treeItem class highRuntimeIcon bits.
	actual := treeItem icon bits.
	
	self assert: expected equals: actual