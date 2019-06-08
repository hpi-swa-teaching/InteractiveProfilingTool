toolbuilder
buildWith: aBuilder

	| windowSpec result upperHorizontalSplit lowerHorizontalSplit |
	
	upperHorizontalSplit := 0.3.
	lowerHorizontalSplit := 0.3.
	
	windowSpec := self buildWindowWith: aBuilder specs: {
		(0@0 corner: 1@upperHorizontalSplit) -> [self buildTreeWith:  aBuilder].
		(0@lowerHorizontalSplit corner: 1@1) -> [self buildCodePaneWith: aBuilder].
	}.
	result := aBuilder build: windowSpec.
	
	^ result 