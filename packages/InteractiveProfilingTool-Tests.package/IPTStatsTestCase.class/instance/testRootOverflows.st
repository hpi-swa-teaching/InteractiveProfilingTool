tests
testRootOverflows

	| actual expected |
	
	model root expect: #getRootOverflows toReturn: 666.
	
	expected := 'Root Overflows: 666'.
	actual := model formatRootOverflows.
	
	self assert: expected equals: actual