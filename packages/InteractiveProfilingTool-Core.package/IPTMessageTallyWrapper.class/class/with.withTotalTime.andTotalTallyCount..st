tree construction
with: aRootMessageTally withTotalTime: aTotalTimeValue andTotalTallyCount: aTotalTallyCount
	
	| wrappedReceivers |
	
	aRootMessageTally ifNil: [^ nil ].
	
	wrappedReceivers := aRootMessageTally receivers collect: [ :node | 
		self with: node withTotalTime: aTotalTimeValue andTotalTallyCount: aTotalTallyCount ].
	
	^ IPTMessageTallyWrapper new 
		messageTally: aRootMessageTally;
		receivers: wrappedReceivers;
		totalTimeOfOverallTree: aTotalTimeValue;
		totalTallyCountOfOverallTree: aTotalTallyCount