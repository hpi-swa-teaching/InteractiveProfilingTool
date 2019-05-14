tests
testGetTimeString
	
	| timeStringActual regexTimeStringExpected |
	
	regexTimeStringExpected := '\d+\.\d\s%\s\{\d+\.\d\s?ms\}'.
	timeStringActual := IPTTreeModel new getTimeString: tallyObject.

	self assert: (timeStringActual matchesRegex: regexTimeStringExpected)