tests
testStopProfiling

	model isCurrentlyProfiling: true.
	model stopProfiling.
	self assert: false equals: model isCurrentlyProfiling