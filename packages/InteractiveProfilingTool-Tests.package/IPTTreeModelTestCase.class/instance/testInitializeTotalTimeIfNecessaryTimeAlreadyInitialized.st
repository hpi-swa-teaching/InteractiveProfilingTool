tests
testInitializeTotalTimeIfNecessaryTimeAlreadyInitialized

	| tree |
	
	tree := IPTTreeModelMock new.
	tree totalTime: -1.
	
	tree initializeTotalTimeIfNecessaryUsing: wrappedTally.
	self assert: (tree totalTime) equals: -1