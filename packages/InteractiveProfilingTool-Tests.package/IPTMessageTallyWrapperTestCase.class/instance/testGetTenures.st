tests
testGetTenures

	| expected actual |
	
	actual := wrappedTallyMock getTenures.
	expected := 555.

	self assert: expected equals: actual


		
	