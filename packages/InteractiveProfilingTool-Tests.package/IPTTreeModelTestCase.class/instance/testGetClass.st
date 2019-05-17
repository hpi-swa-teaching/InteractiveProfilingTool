tests
testGetClass

	| classActual classExpected |
	
	classExpected := 'IPTTreeModelTestCase'.
	classActual := describedClass new getClass: tallyObject.
	
	self assert: classActual = classExpected