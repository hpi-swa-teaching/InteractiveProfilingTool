accessing
borderColor: aColorOrSymbolOrNil 

	self flag: #compatibility. "mt: For old code. Should be removed in the future."
	aColorOrSymbolOrNil
		ifNil: [self borderStyle: nil]
		ifNotNil: [:colorOrSymbol |
			colorOrSymbol isSymbol ifTrue: [
				^ self borderStyle: ((self borderStyleForSymbol: colorOrSymbol)
											width: self borderStyle width;
											baseColor: self borderStyle baseColor;
											trackColorFrom: self;
											yourself)]].

	"Ensure a style object that can remember width and color."
	self borderStyle style = #none
		ifTrue: [self borderStyle: BorderStyle simple].

	"Set the color of the current border style."			
	self borderStyle
		baseColor: aColorOrSymbolOrNil;
		trackColorFrom: self.

	self changed.