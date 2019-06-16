tests
testGetSelectedClassWhenClassExist
	
	| tree |
	
	tree := IPTTreeModelMock new currentSelection: wrappedTally.
	
	self assert: Boolean equals: (tree selectedClass)