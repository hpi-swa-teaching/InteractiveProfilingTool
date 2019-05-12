tests
testWindowTitle

	| spec |
	
	spec := model buildWindowWith: builder.
	self assert: 'Profiler' equals: spec label