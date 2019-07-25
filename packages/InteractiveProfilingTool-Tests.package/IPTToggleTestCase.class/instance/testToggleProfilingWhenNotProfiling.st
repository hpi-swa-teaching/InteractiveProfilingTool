tests
testToggleProfilingWhenNotProfiling
	
	model toggleProfiling.
	
	self assert: true equals: model isCurrentlyProfiling