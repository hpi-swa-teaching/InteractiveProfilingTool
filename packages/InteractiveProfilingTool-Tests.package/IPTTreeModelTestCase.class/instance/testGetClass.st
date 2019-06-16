tests
testGetClass

	| classActual classExpected |
	
	classExpected := IPTTreeModelTestCase.
	classActual := IPTTreeModelMock new getClass: wrappedTally.
	
	self assert: classActual equals: classExpected