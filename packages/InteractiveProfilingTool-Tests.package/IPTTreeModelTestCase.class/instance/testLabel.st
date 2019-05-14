tests
testLabel
	
	| labelActual regexLabelExpected |

	regexLabelExpected := '\d+\.\d\s%\s\{\d+\.\d\s?ms\}\s\w+\s?>>\s?(\w+\:?)+'.
	labelActual := IPTTreeModel new label: tallyObject.

	self assert: (labelActual matchesRegex: regexLabelExpected)