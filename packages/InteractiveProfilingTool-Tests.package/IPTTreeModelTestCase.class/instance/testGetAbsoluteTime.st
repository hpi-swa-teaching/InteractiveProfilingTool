tests
testGetAbsoluteTime

	| timeActual |
	
	timeActual := IPTTreeModelMock new getAbsoluteTime: tallyObject.
	
	self assert: timeActual isFloat.
	self assert: timeActual > 0
	
	