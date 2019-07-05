as yet unclassified
testGetIconIfAboveThreshold

	
	| treeItem expected actual |
	
	treeItem := IPTTreeItemWrapper with: wrappedTallyWithHighRuntime.
	expected := treeItem class highRuntimeIcon bits.
	actual := (treeItem icon) bits.
	
	self assert: expected equals: actual
	