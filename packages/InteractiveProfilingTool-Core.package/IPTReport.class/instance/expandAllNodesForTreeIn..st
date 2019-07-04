toolbuilder
expandAllNodesForTreeIn: window
	
	| tree |
	
	tree := window submorphNamed: #resultsTree.
	tree selectedMorph: tree items first.
	tree expandAll