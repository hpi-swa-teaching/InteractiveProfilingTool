as yet unclassified
openStatsWithRoot: wrappedRoot withUserCallsRoot: wrappedUserCallsRoot

	| model |
	
	model := self new
		root: wrappedRoot;
		userCallsRoot: wrappedUserCallsRoot;
		yourself.
	
	ToolBuilder open: model