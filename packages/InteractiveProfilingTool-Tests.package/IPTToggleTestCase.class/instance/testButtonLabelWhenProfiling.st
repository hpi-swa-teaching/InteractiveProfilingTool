tests
testButtonLabelWhenProfiling
	
	model isCurrentlyProfiling: true.
	
	self assert: 'Stop Profiling' equals: model buttonLabel