toolbuilder
expandAllNodesForTreeIn: window
	
	| tree |
	
	tree := window submorphNamed: #resultsTree.
	tree items ifNotEmpty: [
		tree selectedMorph: tree items first.
		tree expandAll]
