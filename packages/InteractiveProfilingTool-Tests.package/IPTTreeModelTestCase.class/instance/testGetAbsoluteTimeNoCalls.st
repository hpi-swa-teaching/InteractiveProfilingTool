tests
testGetAbsoluteTimeNoCalls

	| timeActual |
	
	timeActual := IPTTreeModelMock new getAbsoluteTime: tallyObjectNoCalls.
	self assert: timeActual equals: 0
		
	