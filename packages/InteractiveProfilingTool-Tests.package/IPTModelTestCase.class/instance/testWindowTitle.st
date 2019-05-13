tests
testWindowTitle

	| spec |
	
	spec := model getWindowSpecWith: builder.
	self assert: 'Profiler' equals: spec label