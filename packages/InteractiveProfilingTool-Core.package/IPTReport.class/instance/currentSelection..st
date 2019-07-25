accessing
currentSelection: aMessageTallyWrapper

	currentSelection := aMessageTallyWrapper.
	
	self 
		changed: #currentSelection;
		changed: #style;
		contentsChanged