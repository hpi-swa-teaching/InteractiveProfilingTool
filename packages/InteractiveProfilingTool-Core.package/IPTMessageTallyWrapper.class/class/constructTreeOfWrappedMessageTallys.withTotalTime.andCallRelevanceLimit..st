tree construction
constructTreeOfWrappedMessageTallys: aRootMessageTally withTotalTime: aTotalTimeValue andCallRelevanceLimit: aCallRelevancePercentage
	
	| wrappedNode |
	
	wrappedNode := IPTMessageTallyWrapper new 
		messageTallyRoot: aRootMessageTally;
		totalTimeOfOverallTree: aTotalTimeValue;
		callRelevancePercentage: aCallRelevancePercentage.
	wrappedNode wrapRecievers.

	^ wrappedNode