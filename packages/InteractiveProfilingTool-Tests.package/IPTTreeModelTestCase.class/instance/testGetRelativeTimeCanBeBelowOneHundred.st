tests
testGetRelativeTimeCanBeBelowOneHundred

	| timeActual tree |
	
	tree := IPTTreeModelMock new totalTime: 1000.
	timeActual := tree getRelativeTime: wrappedTally.
	
	self assert: timeActual < 100.
	self assert: 0 < timeActual