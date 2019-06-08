accessing
currentSelection: aNode

	currentSelection := aNode.
	
	self changed: #currentSelection.
	self changed: #style.
	self contentsChanged