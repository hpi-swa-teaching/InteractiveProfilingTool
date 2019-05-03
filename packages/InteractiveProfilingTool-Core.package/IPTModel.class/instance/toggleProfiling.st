as yet unclassified
toggleProfiling

	self shouldContinueProfiling
		ifTrue: [self stopProfiling]
		ifFalse: [self startProfiling]