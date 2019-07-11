display profiling results
openReportFor: aMessageTally
	
	| tree rootNode userCallsRoot |
	
	rootNode := IPTMessageTallyWrapper with: aMessageTally.
	userCallsRoot := rootNode findRootForUserCalls.
	
	tree := self new
		root: rootNode;
		userCallsRoot: userCallsRoot;
		yourself.
	
	 ^ self open: tree