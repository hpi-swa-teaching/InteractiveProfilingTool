tests
testWindowTitle

	| spec |
	
	spec := model getWindowSpecWith: builder.
	self assert: 'Interactive Profiler' equals: spec label