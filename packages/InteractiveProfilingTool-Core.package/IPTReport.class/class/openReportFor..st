display profiling results
openReportFor: aMessageTally
	
	| tree rootNode userCallsRoots |
	
	userCallsRoots := self findRootForUserCalls: aMessageTally.
	rootNode := IPTMessageTallyWrapper withRoot: aMessageTally andUserCallsRoot: userCallsRoots.
	
	tree := self withRoot: rootNode withUserCallsRoots: userCallsRoots.
	
	self open: tree