tests
testRelativeTimeAtRoot

	| timeActual |
		
	timeActual := IPTTreeModelMock new getRelativeTime: wrappedTally.
	self assert: timeActual equals: 100.0.
	
	timeActual := IPTTreeModelMock new getRelativeTime: tallyObjectNoCalls.
	self assert: timeActual equals: 100.0
	