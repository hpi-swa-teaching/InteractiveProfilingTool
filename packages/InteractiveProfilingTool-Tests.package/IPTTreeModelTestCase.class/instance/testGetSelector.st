tests
testGetSelector

	| selectorActual selectorExpected |
	
	selectorExpected := 'setUp'.
	selectorActual := IPTTreeModelMock new getSelector: tallyObject.
	
	self assert: selectorActual equals: selectorExpected