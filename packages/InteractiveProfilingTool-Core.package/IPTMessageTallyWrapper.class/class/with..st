tree construction
with: aMessageTally

	| totalTime totalTallyCount wrappedReceivers |
	
	aMessageTally ifNil: [^ nil ].
	
	totalTime := aMessageTally time.
	totalTallyCount := aMessageTally tally.
	
	wrappedReceivers := aMessageTally receivers collect: [ :node | 
		self with: node withTotalTime: totalTime andTotalTallyCount: totalTallyCount ].
	
	^ IPTMessageTallyWrapper new 
		messageTally: aMessageTally;
		receivers: wrappedReceivers;
		totalTimeOfOverallTree: totalTime;
		totalTallyCountOfOverallTree: totalTallyCount