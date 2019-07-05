as yet unclassified
testIconIfBelowThreshold

	| treeitem expected actual |
	
	treeitem := IPTTreeItemWrapper with: (wrappedTally totalTimeOfOverallTree: 7000000).
	expected := treeitem class emptyIcon.
	actual := treeitem icon.
	
	self assert: expected equals: actual
	