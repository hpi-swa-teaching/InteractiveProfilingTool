tests
testContents
	
	wrappedTally expect: #getChildrenWithRelevantPerformanceImpact toReturn: { Mock new }.
	
	self assert: (treeItemWrapper contents at: 1) class == IPTTreeItemWrapper