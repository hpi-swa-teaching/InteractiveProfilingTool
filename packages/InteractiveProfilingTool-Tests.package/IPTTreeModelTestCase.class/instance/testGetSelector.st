tests
testGetSelector

	| selectorActual selectorExpected |
	
	selectorExpected := 'setUp'.
	selectorActual := describedClass new getSelector: tallyObject.
	
	self assert: selectorActual = selectorExpected