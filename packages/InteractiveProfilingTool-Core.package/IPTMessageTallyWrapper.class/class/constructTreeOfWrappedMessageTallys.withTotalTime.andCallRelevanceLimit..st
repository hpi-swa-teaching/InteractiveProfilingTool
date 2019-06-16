tree construction
constructTreeOfWrappedMessageTallys: aRootMessageTally withTotalTime: aTotalTimeValue andCallRelevanceLimit: aCallRelevancePercentage
	
	| wrappedNode |
	
	wrappedNode := IPTMessageTallyWrapper new 
		messageTally: aRootMessageTally;
		totalTimeOfOverallTree: aTotalTimeValue.
	wrappedNode wrapReceivers.

	^ wrappedNode