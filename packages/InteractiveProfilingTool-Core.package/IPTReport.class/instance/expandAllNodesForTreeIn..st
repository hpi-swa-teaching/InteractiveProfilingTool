toolbuilder
expandAllNodesForTreeIn: window
	
	| tree |
	
	tree := window submorphNamed: #resultsTree.
	tree items isEmpty ifFalse: [
		tree selectedMorph: tree items first.
		tree expandAll.].