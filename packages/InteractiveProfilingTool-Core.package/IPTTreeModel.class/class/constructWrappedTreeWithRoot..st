helpers
constructWrappedTreeWithRoot: aMessageTally

	| totalTime callRelevancePercentage root |
	
	totalTime := aMessageTally tally.
	callRelevancePercentage := IPTTreeModel new callRelevancePercentage.
	
	root := IPTMessageTallyWrapper constructTreeOfWrappedMessageTallys: aMessageTally 
		withTotalTime: totalTime 
		andCallRelevanceLimit: callRelevancePercentage.
			
	^ root