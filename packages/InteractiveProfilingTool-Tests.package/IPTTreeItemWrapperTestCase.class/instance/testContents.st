tests
testContents
	
	wrappedTally receivers: {(wrappedTally totalTallyCountOfOverallTree: 100)}.
	
	self assert: (treeItem contents at: 1) class == IPTTreeItemWrapper