helpers
constructWrappedTreeWithRoot: aMessageTally

	| totalTime root |
	
	totalTime := aMessageTally tally.
	root := IPTMessageTallyWrapper
		with: aMessageTally
		withTotalTime: totalTime.
		
	^ root