display profiling results
openReportFor: aMessageTally
	
	| tree rootMessageTallyForUserCalls |
	
	rootMessageTallyForUserCalls := self findRootForUserCalls: aMessageTally.

	tree := self new
		initializeWithRootMessageTally: rootMessageTallyForUserCalls
		setInitialSelection.
			
	self open: tree