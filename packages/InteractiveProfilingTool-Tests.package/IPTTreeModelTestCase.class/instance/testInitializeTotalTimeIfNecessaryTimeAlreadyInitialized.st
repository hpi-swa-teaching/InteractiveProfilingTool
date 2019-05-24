tests
testInitializeTotalTimeIfNecessaryTimeAlreadyInitialized

	| tree |
	
	tree := IPTTreeModelMock new.
	tree totalTime: -1.
	
	tree initializeTotalTimeIfNecessaryUsing: tallyObject.
	self assert: tree totalTime = -1