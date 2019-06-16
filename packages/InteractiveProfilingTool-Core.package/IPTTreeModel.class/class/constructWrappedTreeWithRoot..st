helpers
constructWrappedTreeWithRoot: aMessageTally

	| totalTime root |
	
	totalTime := aMessageTally tally.
	root := IPTMessageTallyWrapper constructTreeOfWrappedMessageTallys: aMessageTally 
		withTotalTime: totalTime.
	^ root