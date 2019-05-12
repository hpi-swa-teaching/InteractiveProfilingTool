display profiling results
display: aMessageTally
	
	| tree messageTallyForUserCalls |
	
	messageTallyForUserCalls := self findRootForUserCalls: aMessageTally.
	
	tree := self new
		roots: (OrderedCollection with: messageTallyForUserCalls);
		totalTime: messageTallyForUserCalls tally.
	
	ToolBuilder open: tree