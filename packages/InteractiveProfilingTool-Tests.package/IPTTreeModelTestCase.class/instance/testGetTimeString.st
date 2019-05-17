tests
testGetTimeString
	
	| timeStringActual |

	timeStringActual := describedClass new getTimeString: tallyObject.

	self assert: (timeStringActual includesSubString: '%').
	self assert: (timeStringActual includesSubString: 'ms')