as yet unclassified
openStatsForRoot: wrappedRoot userCallsRoot: wrappedUserCallsRoot

	| model |
	
	model := self new
		root: wrappedRoot;
		userCallsRoot: wrappedUserCallsRoot;
		yourself.
	
	ToolBuilder open: model
	