tests
testGetSelector

	| selectorActual selectorExpected |
	
	selectorExpected := 'setUp'.
	selectorActual := IPTTreeModel new getSelector: tallyObject.
	
	self assert: selectorActual = selectorExpected