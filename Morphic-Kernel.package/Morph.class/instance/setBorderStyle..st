accessing
setBorderStyle: aSymbol
	"Set the border style of my costume"

	(self borderStyleForSymbol: aSymbol)
		ifNotNil: [:style | self borderStyle: style].