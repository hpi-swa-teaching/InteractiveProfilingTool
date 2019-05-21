tests
testLabel
	
	| labelActual regexLabelExpected |
	
	"example match: 16.3 % {10.4 ms} IPTTreeModelTestCase >> setUp"
	regexLabelExpected := '\d+\.\d\s%\s\{\d+\.\d\s?ms\}\s\w+\s?>>\s?(\w+\:?)+'.	

	labelActual := describedClass new label: tallyObject.

	self assert: (labelActual matchesRegex: regexLabelExpected).
	self assert: (labelActual endsWith:  'IPTTreeModelTestCase >> setUp')