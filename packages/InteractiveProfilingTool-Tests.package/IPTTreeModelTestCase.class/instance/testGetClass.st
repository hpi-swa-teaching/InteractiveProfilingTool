tests
testGetClass

	| classActual classExpected |
	
	classExpected := IPTTreeModelTestCase.
	classActual := IPTTreeModelMock new getClass: tallyObject.
	
	self assert: classActual equals: classExpected