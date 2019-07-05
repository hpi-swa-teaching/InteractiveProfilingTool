as yet unclassified
testGetIconIfBelowThreshold

	| treeitem expected actual |
	
	treeitem := IPTTreeItemWrapper with: wrappedTallyWithLowRuntime.
	expected := treeitem class emptyIcon.
	actual := treeitem icon.
	
	self assert: expected equals: actual
	