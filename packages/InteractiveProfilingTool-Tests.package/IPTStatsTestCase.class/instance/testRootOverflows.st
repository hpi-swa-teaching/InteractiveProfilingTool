tests
testRootOverflows

	| actual expected |
	
	expected := 'Root Overflows: 666'.
	actual := model formatRootOverflows.
	
	self assert: expected equals: actual