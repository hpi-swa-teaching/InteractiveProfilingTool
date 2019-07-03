tree construction
constructTreeOfWrappedMessageTallys: aRootMessageTally withTotalTime: aTotalTimeValue
	
	| wrappedReceivers |
		
	wrappedReceivers := aRootMessageTally receivers collect: [ :node | 
		self constructTreeOfWrappedMessageTallys: node withTotalTime: aTotalTimeValue ].
	
	^ IPTMessageTallyWrapper new 
		messageTally: aRootMessageTally;
		receivers: wrappedReceivers;
		totalTimeOfOverallTree: aTotalTimeValue;
		yourself