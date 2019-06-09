tests
testGetSelector

	| selectorActual selectorExpected |
	
	selectorExpected := 'setUp'.
	selectorActual := IPTTreeModelMock new getSelectorName: tallyObject.
	
	self assert: selectorActual equals: selectorExpected