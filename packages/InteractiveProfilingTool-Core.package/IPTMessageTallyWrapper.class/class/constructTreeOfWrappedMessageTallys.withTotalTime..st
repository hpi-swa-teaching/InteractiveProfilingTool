tree construction
constructTreeOfWrappedMessageTallys: aRootMessageTally withTotalTime: aTotalTimeValue
	
	| wrappedNode |
	
	aRootMessageTally ifNil: [^ nil].
	
	wrappedNode := IPTMessageTallyWrapper new 
		messageTally: aRootMessageTally;
		totalTimeOfOverallTree: aTotalTimeValue.
	wrappedNode wrapReceivers.

	^ wrappedNode