helpers
constructWrappedTreeWithRoot: aMessageTally andTotalTime: aTotalTime

	| totalTallies root |
	
	totalTallies := aMessageTally tally.
	root := IPTMessageTallyWrapper constructTreeOfWrappedMessageTallys: aMessageTally 
		withTotalTime: aTotalTime andTotalTallyCount: totalTallies.

	^ root