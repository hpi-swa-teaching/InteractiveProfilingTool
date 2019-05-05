accessing
borderColor: aColorOrSymbolOrNil

	super borderColor: aColorOrSymbolOrNil.

	self flag: #compatibility. "mt: For older code, update the instance variables. Should be removed in the future."
	borderColor := self borderStyle color.