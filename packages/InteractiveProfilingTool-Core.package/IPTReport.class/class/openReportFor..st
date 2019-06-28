display profiling results
openReportFor: aMessageTally
	
	| totalTime tree rootMessageTallyForUserCalls rootNode |
	
	rootMessageTallyForUserCalls := self findRootForUserCalls: aMessageTally.
	totalTime := self calculateTotalTimeForUserCallsWithRoot: aMessageTally andUserRoot: rootMessageTallyForUserCalls.
	
	rootNode := rootMessageTallyForUserCalls
		ifNotNil: [self constructWrappedTreeWithRoot: rootMessageTallyForUserCalls andTotalTime: totalTime]
		ifNil: [nil].

	tree := self new
		initializeWithRootNode: rootNode;
		setInitialSelection.
			
	self open: tree