tests
testGetTimeString
	
	| timeStringActual regexTimeStringExpected |
	
	"example match: 16.3 % {10.4 ms}"
	regexTimeStringExpected := '\d+\.\d\s%\s\{\d+\.\d\s?ms\}'.
	
	timeStringActual := IPTTreeModelMock new getTimeString: wrappedTally.
	
	self assert: (timeStringActual matchesRegex: regexTimeStringExpected)