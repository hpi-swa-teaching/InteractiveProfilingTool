profiling
toggleProfiling

	self isCurrentlyProfiling
		ifTrue: [self stopProfiling]
		ifFalse: [self startProfiling]