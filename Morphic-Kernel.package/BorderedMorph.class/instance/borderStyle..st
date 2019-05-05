accessing
borderStyle: aBorderStyle 

	super borderStyle: aBorderStyle.

	self flag: #compatibility. "mt: For older code, update the instance variables. Should be removed in the future."
	borderWidth := self borderStyle width.
	borderColor := self borderStyle color.