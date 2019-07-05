helpers
constructWrappedTreeWithRoot: aMessageTally andTotalTime: aTotalTime

	| totalTallies root |
	
	totalTallies := aMessageTally tally.
	root := IPTMessageTallyWrapper with: aMessageTally 
		withTotalTime: aTotalTime andTotalTallyCount: totalTallies.

	^ root