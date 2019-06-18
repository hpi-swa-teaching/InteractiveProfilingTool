display profiling results
openReportFor: aMessageTally
	
	| tree root userCallsRoot |
	
	root := self constructWrappedTreeWithRoot: aMessageTally.
	userCallsRoot := root findRootForUserCalls.
	
	tree := self new
		initializeWithRootNode: userCallsRoot;
		setInitialSelection.
			
	self open: tree