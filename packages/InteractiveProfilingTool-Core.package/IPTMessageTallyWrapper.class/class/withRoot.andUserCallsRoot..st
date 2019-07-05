tree construction
withRoot: aRootMessageTally andUserCallsRoot: aUserCallsRootMessageTally
	
	| temp |
	temp := self with: aUserCallsRootMessageTally withTotalTime: (aRootMessageTally time) andTotalTallyCount: (aUserCallsRootMessageTally tally).
	
	self halt.
	^ temp