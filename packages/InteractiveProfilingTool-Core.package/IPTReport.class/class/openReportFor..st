display profiling results
openReportFor: aMessageTally
	
	| tree rootNode userCallsRoots |
	
	rootNode := IPTMessageTallyWrapper with: aMessageTally.
	userCallsRoots := rootNode findRootsForUserCalls.
	
	tree := self new
		root: rootNode;
		userCallsRoots: userCallsRoots;
		yourself.
	
	 ^ self open: tree