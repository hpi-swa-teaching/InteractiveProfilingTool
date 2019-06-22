as yet unclassified
openStatsForRoot: wrappedRoot userCallsRoot: wrappedUserCallsRoot

	| model |
	
	model := self new
		root: wrappedRoot;
		userCallsRoots: wrappedUserCallsRoot;
		yourself.
	
	ToolBuilder open: model
	