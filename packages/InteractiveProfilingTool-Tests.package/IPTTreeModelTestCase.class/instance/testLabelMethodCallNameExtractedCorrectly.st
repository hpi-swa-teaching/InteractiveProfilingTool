tests
testLabelMethodCallNameExtractedCorrectly
	
	| labelActual |

	labelActual := IPTTreeModelMock new label: wrappedTally.

	self assert: (labelActual endsWith:  'IPTTreeModelTestCase >> setUp')