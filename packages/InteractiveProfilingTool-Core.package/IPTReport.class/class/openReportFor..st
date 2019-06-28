display profiling results
openReportFor: aMessageTally
	
	| tree root userCallsRoots |
	
	root := self constructWrappedTreeWithRoot: aMessageTally.
	
	userCallsRoots := root findRootForUserCalls.
	userCallsRoots := userCallsRoots
		ifNil: [{}]
		ifNotNil: [{ userCallsRoots }].

	tree := self withRoot: root withUserCallsRoots: userCallsRoots.
			
	self open: tree