tests
testGetSelectedClassWhenClassExist
	
	| tree |
	
	tree := IPTReportMock new currentSelection: wrappedTally.
	
	self assert: Boolean equals: (tree selectedClass)