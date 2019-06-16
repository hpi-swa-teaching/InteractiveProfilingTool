tests
testGetSelector

	| selectorActual selectorExpected |
	
	selectorExpected := 'setUp'.
	selectorActual := IPTTreeModelMock new getSelectorName: wrappedTally.
	
	self assert: selectorActual equals: selectorExpected