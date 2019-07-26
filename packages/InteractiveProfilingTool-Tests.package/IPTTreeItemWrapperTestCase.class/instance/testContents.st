tests
testContents
	
	wrappedTally expect: #getReceiversWithRelevantRuntime toReturn: {Mock new}.
	
	self assert: (treeItemWrapper contents at: 1) class == IPTTreeItemWrapper