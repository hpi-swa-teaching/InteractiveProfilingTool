display profiling results
openReportFor: aMessageTally
	
	| tree root userCallsRoot |
	
	root := self constructWrappedTreeWithRoot: aMessageTally.
	
	"IPTStats openStatsFor: root."
	
	userCallsRoot := root findRootForUserCalls.
	
	tree := self new
		initializeWithUserCallsRootsNode: userCallsRoot;
		initializeWithRootNode: root;
		setInitialSelection.
			
	self open: tree