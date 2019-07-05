display profiling results
with: aMessageTallyWrapper
	
	| userCallsRoot userCallsRoots |
	
	userCallsRoot := aMessageTallyWrapper findRootForUserCalls.
	userCallsRoot 
		ifNil: [userCallsRoots := {}]
		ifNotNil: [
			userCallsRoot totalTallyCountOfOverallTree: userCallsRoot messageTally tally.
			userCallsRoot setReceiversTotalTallyCountToOwnTotalTallyCount.
			userCallsRoots := {userCallsRoot}].
	
	^ self new
		root: aMessageTallyWrapper;
		userCallsRoots: userCallsRoots;
		yourself