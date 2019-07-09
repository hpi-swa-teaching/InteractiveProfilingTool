tests
testContents
	
	wrappedTally receivers: {(wrappedTally totalTimeOfOverallTree: 100)}.
	
	self assert: (treeItem contents at: 1) class == IPTTreeItemWrapper