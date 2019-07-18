tests
testGetRootOverflows

	| expected actual |
	
	actual := wrappedTallyMock getRootOverflows.
	expected := 666.

	self assert: expected equals: actual


		
	