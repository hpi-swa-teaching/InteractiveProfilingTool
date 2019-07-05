as yet unclassified
testContents
	
	wrappedTally receivers: {(wrappedTally totalTimeOfOverallTree: 100)}.
	
	self assert: (treeItem contents allSatisfy: [ :item | item class == IPTTreeItemWrapper ])