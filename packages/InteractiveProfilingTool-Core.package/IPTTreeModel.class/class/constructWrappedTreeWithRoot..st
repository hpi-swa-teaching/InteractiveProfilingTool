display profiling results
constructWrappedTreeWithRoot: aMessageTally

	| totalTime callRelevancePercentage roots |
	
	totalTime := aMessageTally tally.
	callRelevancePercentage := self new callRelevancePercentage.
	
	roots := {
		MessageTallyWrapper constructTreeOfWrappedMessageTallys: aMessageTally 
			withTotalTime: totalTime 
			andCallRelevanceLimit: callRelevancePercentage}.
			
	^ roots