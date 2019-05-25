helpers
constructWrappedTreeWithRoot: aMessageTally

	| totalTime callRelevancePercentage roots |
	
	totalTime := aMessageTally tally.
	callRelevancePercentage := self new callRelevancePercentage.
	
	roots := {
		IPTMessageTallyWrapper constructTreeOfWrappedMessageTallys: aMessageTally 
			withTotalTime: totalTime 
			andCallRelevanceLimit: callRelevancePercentage}.
			
	^ roots