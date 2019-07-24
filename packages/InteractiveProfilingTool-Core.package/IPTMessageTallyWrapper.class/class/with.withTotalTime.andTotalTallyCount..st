tree construction
with: aRootMessageTally withTotalTime: aTotalTimeValue andTotalTallyCount: aTotalTallyCount
	
	| wrappedReceivers |
	
	aRootMessageTally ifNil: [^ nil ].
	
	wrappedReceivers := aRootMessageTally receivers collect: [:receiver | 
		self with: receiver withTotalTime: aTotalTimeValue andTotalTallyCount: aTotalTallyCount ].
	
	^ IPTMessageTallyWrapper new 
		messageTally: aRootMessageTally;
		receivers: wrappedReceivers;
		totalTimeOfOverallTree: aTotalTimeValue;
		totalTallyCountOfOverallTree: aTotalTallyCount