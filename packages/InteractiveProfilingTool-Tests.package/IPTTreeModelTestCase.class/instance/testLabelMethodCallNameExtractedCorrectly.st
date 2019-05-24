tests
testLabelMethodCallNameExtractedCorrectly
	
	| labelActual |

	labelActual := IPTTreeModelMock new label: tallyObject.

	self assert: (labelActual endsWith:  'IPTTreeModelTestCase >> setUp')