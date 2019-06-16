tests
testInitializeTotalTimeIfNecessary

	| tree |
	
	tree := IPTTreeModelMock new.
	
	tree initializeTotalTimeIfNecessaryUsing: tallyObjectNoCalls.
	self assert: (tree totalTime) equals: 0