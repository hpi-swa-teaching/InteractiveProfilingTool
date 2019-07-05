tests
testAutoExpand
	| window tree nodeItems reportForTree |
	
	wrappedTally := self getWrappedTallyMockTree.
	reportForTree := IPTReport new
		userCallsRoots: {wrappedTally};
		setInitialSelection.
	window := ToolBuilder build: reportForTree.
	tree := window submorphNamed: #resultsTree.
	
	nodeItems := tree items asOrderedCollection.
	nodeItems removeLast. "last Node is leaf and therefore cannot be expanded"
	
	self assert: (nodeItems allSatisfy: [ :item | item isExpanded ])