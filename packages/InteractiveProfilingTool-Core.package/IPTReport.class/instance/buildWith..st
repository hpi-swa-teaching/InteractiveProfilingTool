toolbuilder
buildWith: aBuilder

	| windowSpec |
	
	windowSpec := self buildWindowWith: aBuilder specs: {
		(self boundsOfUpperWindowHalf) -> [self buildTreeWith:  aBuilder].
		(self boundsOfLowerWindowHalf) -> [self buildCodePaneWith: aBuilder].
		(self boundsOfStatsButton) -> [self buildStatsButtonWith: aBuilder]}.
	
	^ aBuilder build: windowSpec. 