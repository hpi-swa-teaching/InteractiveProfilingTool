accessing
borderWidth: anInteger
	
	super borderWidth: anInteger.
		
	self flag: #compatibility. "mt: For older code, update the instance variables. Should be removed in the future."
	borderWidth := self borderStyle width.