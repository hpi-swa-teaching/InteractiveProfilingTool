tests
testLabelMethodCallNameExtractedCorrectly
	
	| labelActual |

	labelActual := describedClass new label: tallyObject.

	self assert: (labelActual endsWith:  'IPTTreeModelTestCase >> setUp')