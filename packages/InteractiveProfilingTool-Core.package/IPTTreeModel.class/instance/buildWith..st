toolbuilder
buildWith: aBuilder

	| windowSpec result |
	
	windowSpec := self buildWindowWith: aBuilder specs: {
		(self boundsOfUpperWindowHalf) -> [self buildTreeWith:  aBuilder].
		(self boundsOfLowerWindowHalf) -> [self buildCodePaneWith: aBuilder]}.
	result := aBuilder build: windowSpec.
	
	^ result 