tests
testGetMemoryStatsFree

	| expected actual |
	
	expected := wrappedTallyMock getMemoryStats at: #free.
	actual := -300000.

	self assert: expected equals: actual


		
	