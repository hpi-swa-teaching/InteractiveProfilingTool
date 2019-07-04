toolbuilder
buildWith: aBuilder

	| windowSpec window |
	
	windowSpec := self buildWindowWith: aBuilder specs: {
		(self boundsOfUpperWindowHalf) -> [self buildTreeWith:  aBuilder].
		(self boundsOfLowerWindowHalf) -> [self buildCodePaneWith: aBuilder].
		(self boundsOfStatsButton) -> [self buildStatsButtonWith: aBuilder]}.
	
	window := aBuilder build: windowSpec.
	self expandAllNodesForTreeIn: window.
	^ window