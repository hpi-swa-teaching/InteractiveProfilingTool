tests
testRelativeTimeAtRoot

	| timeActual |
		
	timeActual := IPTTreeModelMock new getRelativeTime: tallyObject.
	self assert: timeActual = 100.0.
	
	timeActual := IPTTreeModelMock new getRelativeTime: tallyObjectNoCalls.
	self assert: timeActual = 100.0
	