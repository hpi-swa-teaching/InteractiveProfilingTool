display profiling results
openReportFor: aMessageTally
	
	| tree root userCallsRoots |
	
	root := IPTMessageTallyWrapper with: aMessageTally.
	userCallsRoot := root findRootForUserCalls.
	
	userCallsRoots := root findRootForUserCalls.
	userCallsRoots := userCallsRoots
		ifNil: [{}]
		ifNotNil: [{ userCallsRoots }].

	tree := self withRoot: root withUserCallsRoots: userCallsRoots.
			
	self open: tree