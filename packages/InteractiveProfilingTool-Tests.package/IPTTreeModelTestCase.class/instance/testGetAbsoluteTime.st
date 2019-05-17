tests
testGetAbsoluteTime

	| timeActual timeExpectedLowerBound timeExpectedUpperBound |
	
	timeExpectedUpperBound := 300.
	timeExpectedLowerBound := 30.
	
	timeActual := describedClass new getAbsoluteTime: tallyObject.
	
	self assert: timeActual isFloat.
	self assert: timeExpectedLowerBound < timeActual.
	self assert: timeActual < timeExpectedUpperBound.
	
	timeActual := describedClass new getAbsoluteTime: tallyObjectTimeZero.
	self assert: timeActual = 0
	