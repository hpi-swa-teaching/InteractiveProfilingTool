display profiling results
display: aMessageTally
	
	| tree rootMessageTallyForUserCalls |
	
	rootMessageTallyForUserCalls := self findRootForUserCalls: aMessageTally.
	
	tree := self new
		roots: (OrderedCollection with: rootMessageTallyForUserCalls);
		totalTime: rootMessageTallyForUserCalls tally.
	
	ToolBuilder open: tree