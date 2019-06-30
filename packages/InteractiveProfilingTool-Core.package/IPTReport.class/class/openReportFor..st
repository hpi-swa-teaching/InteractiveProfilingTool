display profiling results
openReportFor: aMessageTally
	
	| tree root userCallsRoot |
	
	root := IPTMessageTallyWrapper constructTreeOfWrappedMessageTallys: aMessageTally.
	userCallsRoot := root findRootForUserCalls.
	
	tree := self new
		initializeWithRootNode: userCallsRoot;
		setInitialSelection.
			
	self open: tree