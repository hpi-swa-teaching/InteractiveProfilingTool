tests
testLabel
	
	| labelActual |
	
	"TODO discuss if this should be kept"
	"regexLabelExpected := '\d+\.\d\s%\s\{\d+\.\d\s?ms\}\s\w+\s?>>\s?(\w+\:?)+'."
	
	labelActual := describedClass new label: tallyObject.

	self assert: (labelActual includesSubString: '%').
	self assert: (labelActual includesSubString: 'ms').
	self assert: (labelActual endsWith:  'IPTTreeModelTestCase >> setUp')