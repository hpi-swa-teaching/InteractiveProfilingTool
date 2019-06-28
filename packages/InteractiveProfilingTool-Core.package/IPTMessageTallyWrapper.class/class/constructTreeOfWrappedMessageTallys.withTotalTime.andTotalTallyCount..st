tree construction
constructTreeOfWrappedMessageTallys: aRootMessageTally withTotalTime: aTotalTime andTotalTallyCount: aTotalTallyCount
	
	| wrappedNode |
	
	aRootMessageTally 
		ifNil: [^ nil].
	
	wrappedNode := IPTMessageTallyWrapper new 
		messageTally: aRootMessageTally;
		totalTimeOfOverallTree: aTotalTime;
		totalTallyCountOfOverallTree: aTotalTallyCount.

	wrappedNode wrapReceivers.
	^ wrappedNode