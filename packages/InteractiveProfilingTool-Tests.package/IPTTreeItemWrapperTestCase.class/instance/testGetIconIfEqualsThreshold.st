as yet unclassified
testGetIconIfEqualsThreshold

	| treeItem actual expected |
	
	treeItem := IPTTreeItemWrapper with: wrappedTallyWithHalfRuntime.
	expected := treeItem class highRuntimeIcon bits.
	actual := (treeItem icon) bits.
	
	self assert: expected equals: actual