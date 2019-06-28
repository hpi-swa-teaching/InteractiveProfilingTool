toolbuilder
expandAllNodesForTreeIn: window
	
	| tree |
	
	tree := window submorphNamed: #resultsTree.
	tree expandAll