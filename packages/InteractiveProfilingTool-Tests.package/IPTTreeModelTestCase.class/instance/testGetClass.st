tests
testGetClass

	| classActual classExpected |
	
	classExpected := 'IPTTreeModelTestCase'.
	classActual := IPTTreeModel new getClass: tallyObject.
	
	self assert: classActual = classExpected