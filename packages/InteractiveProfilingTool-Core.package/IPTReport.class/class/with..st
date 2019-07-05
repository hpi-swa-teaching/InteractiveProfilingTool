display profiling results
with: aMessageTallyWrapper
	
	| userCallsRoots |
	
	userCallsRoots := aMessageTallyWrapper findRootsForUserCalls.
	userCallsRoots ifNotEmpty: [
		userCallsRoots first
			useOwnTallyCountAsTotalTallyCount;
			setReceiversTotalTallyCountToOwnTotalTallyCount].
	
	^ self new
		root: aMessageTallyWrapper;
		userCallsRoots: userCallsRoots;
		yourself