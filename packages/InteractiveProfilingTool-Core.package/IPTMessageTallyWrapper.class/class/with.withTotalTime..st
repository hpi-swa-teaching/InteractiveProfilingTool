tree construction
with: aRootMessageTally withTotalTime: aTotalTimeValue
	
	| wrappedReceivers |
		
	wrappedReceivers := aRootMessageTally receivers collect: [ :node | 
		self with: node withTotalTime: aTotalTimeValue ].
	
	^ IPTMessageTallyWrapper new 
		messageTally: aRootMessageTally;
		receivers: wrappedReceivers;
		totalTimeOfOverallTree: aTotalTimeValue;
		yourself