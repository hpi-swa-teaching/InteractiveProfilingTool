as yet unclassified
buildWith: aBuilder
	"overrides the original implementation since selection does not work in this mock"
	
	| windowSpec window |
	
	windowSpec := self buildWindowWith: aBuilder specs: {
		(self boundsOfUpperWindowHalf) -> [self buildTreeWith:  aBuilder].
		(self boundsOfLowerWindowHalf) -> [self buildCodePaneWith: aBuilder].
		(self boundsOfStatsButton) -> [self buildStatsButtonWith: aBuilder]}.
	
	window := aBuilder build: windowSpec..
	^ window