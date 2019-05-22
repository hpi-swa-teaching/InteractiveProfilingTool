tests
testLabelFormat
	
	| labelActual regexLabelExpected |
	
	"example match: 16.3 % {10.4 ms} IPTTreeModelTestCase >> setUp"
	regexLabelExpected := '\d+\.\d\s%\s\{\d+\.\d\s?ms\}\s\w+\s?>>\s?(\w+\:?)+'.	
	labelActual := IPTTreeModelMock new label: tallyObject.
	
	self assert: (labelActual matchesRegex: regexLabelExpected).