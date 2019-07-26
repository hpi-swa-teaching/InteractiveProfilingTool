tests
testToggleProfilingWhenProfiling
	
	model isCurrentlyProfiling: true.
	model toggleProfiling.
	
	self assert: false equals: model isCurrentlyProfiling