tests
testGetRelativeTime

	| timeActual timeExpected tree |
	
	timeExpected := 100.0.
	
	timeActual := IPTTreeModel new getRelativeTime: tallyObject.
	self assert: timeExpected = timeActual.
	
	timeActual := IPTTreeModel new getRelativeTime: tallyObjectTimeZero.
	self assert: timeExpected = timeActual.
	
	tree := IPTTreeModel new totalTime: 1000.
	timeActual := tree getRelativeTime: tallyObject.
	self assert: timeActual < 100.
	self assert: 0 < timeActual