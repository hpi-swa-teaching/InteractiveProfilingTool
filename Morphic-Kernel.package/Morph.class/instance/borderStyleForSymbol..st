accessing
borderStyleForSymbol: aStyleSymbol
	"Answer a suitable BorderStyle for me of the type represented by a given symbol"

	^ (BorderStyle borderStyleForSymbol: aStyleSymbol asSymbol)
		ifNotNil: [:style | | existing |
			existing := self borderStyle.
			style
				width: existing width;
				baseColor: existing baseColor;
				trackColorFrom: self;
				yourself]