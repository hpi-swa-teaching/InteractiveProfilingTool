as yet unclassified
openStatsWithRoot: wrappedRoot withUserCallsRoots: wrappedUserCallsRoots

	| model |
	
	model := self new
		root: wrappedRoot;
		userCallsRoots: wrappedUserCallsRoots;
		yourself.
	
	ToolBuilder open: model
	