tests
testAutoExpand
	
	| rootNode innerNode leafNode messageTallyWrapper window tree treeItems |
	
	rootNode := Mock new
		expect: #method toReturn: (Boolean >> #isBoolean);
		expect: #tally toReturn: 1000;
		expect: #time toReturn: 1000.
		
	innerNode := Mock new
		expect: #method toReturn: (Boolean >> #isBoolean);
		expect: #tally toReturn: 1000.
		
	leafNode := Mock new
		expect: #method toReturn: (Boolean >> #isBoolean);
		expect: #tally toReturn: 1000.
		
	rootNode expect: #receivers toReturn: {innerNode}.
	innerNode expect: #receivers toReturn: {leafNode}.
	leafNode expect: #receivers toReturn: {}.
	
	messageTallyWrapper := IPTMessageTallyWrapper with: rootNode.

	model
		userCallsRoot: messageTallyWrapper;
		currentSelection: messageTallyWrapper.
		
	window := model class open: model.
	tree := window submorphNamed: #resultsTree.
	treeItems := tree items asOrderedCollection.
	
	self assert: treeItems first isExpanded.
	self assert: treeItems second isExpanded.
	
	"The last item is a leaf node and thus cannot be exapend"
	self deny: treeItems third isExpanded.