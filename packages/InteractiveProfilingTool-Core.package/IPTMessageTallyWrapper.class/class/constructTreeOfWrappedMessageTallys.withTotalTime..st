tree construction
constructTreeOfWrappedMessageTallys: aRootMessageTally withTotalTime: aTotalTimeValue
	
	| wrappedNode |
	
	wrappedNode := IPTMessageTallyWrapper new 
		messageTally: aRootMessageTally;
		totalTimeOfOverallTree: aTotalTimeValue.

	wrappedNode wrapReceivers.
	

	^ wrappedNode
