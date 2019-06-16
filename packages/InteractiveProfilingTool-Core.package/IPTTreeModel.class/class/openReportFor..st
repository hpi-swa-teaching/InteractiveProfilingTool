display profiling results
openReportFor: aMessageTally
	
	| tree rootMessageTallyForUserCalls rootNode |
	
	rootMessageTallyForUserCalls := self findRootForUserCalls: aMessageTally.
	
	rootNode := rootMessageTallyForUserCalls
		ifNotNil: [self constructWrappedTreeWithRoot: rootMessageTallyForUserCalls]
		ifNil: [nil].

	tree := self new
		initializeWithRootNode: rootNode;
		setInitialSelection.
			
	self open: tree