helpers
expandAllNodesForTreeIn: window
	
	| tree |
	
	tree := window submorphNamed: #resultsTree.
	tree items ifNotEmpty: [
		tree 
			selectedMorph: tree items first;
			expandAll.
		self 
			currentSelection: self userCallsRoot;
			changed: #userCallsRoot]
