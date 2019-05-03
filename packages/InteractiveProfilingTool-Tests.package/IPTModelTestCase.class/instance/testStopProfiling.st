as yet unclassified
testStopProfiling

	model shouldContinueProfiling: true.
	model stopProfiling.
	self assert: false equals: model shouldContinueProfiling