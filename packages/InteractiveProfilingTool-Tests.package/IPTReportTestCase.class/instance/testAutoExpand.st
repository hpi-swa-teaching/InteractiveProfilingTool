tests
testAutoExpand
	| window listItems reportForTree |
	
	wrappedTally := self getWrappedTallyMockTree.
	reportForTree := IPTReport new
		roots: {wrappedTally};
		setInitialSelection.
	window := reportForTree buildWith: MorphicToolBuilder new.
	
	listItems := self getListItemsFromReportWindow: window.
	listItems removeLast. "last Node is leaf and therefore cannot be expanded"
	
	self assert: (listItems allSatisfy: [ :item | item isExpanded ])