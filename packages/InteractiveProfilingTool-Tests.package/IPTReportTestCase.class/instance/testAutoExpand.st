tests
testAutoExpand
	| window tree nodeItems reportForTree |
	
	wrappedTally := self getWrappedTallyMockTree.
	reportForTree := IPTReport new
		roots: {wrappedTally};
		setInitialSelection.
	window := reportForTree buildWith: MorphicToolBuilder new.
	tree := window submorphNamed: #tree.
	
	nodeItems := tree items asOrderedCollection.
	nodeItems removeLast. "last Node is leaf and therefore cannot be expanded"
	
	self assert: (nodeItems allSatisfy: [ :item | item isExpanded ])