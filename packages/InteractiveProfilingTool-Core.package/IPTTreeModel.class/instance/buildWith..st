toolbuilder
buildWith: aBuilder

	| windowSpec result|
	
	windowSpec := self buildWindowWith: aBuilder specs: {
		(0@0 corner: 1@0.3) -> [self buildTreeWith:  aBuilder].
		(0@0.3 corner: 1@1) -> [self buildCodePaneWith: aBuilder].
	}.
	result := aBuilder build: windowSpec.
	^ result 