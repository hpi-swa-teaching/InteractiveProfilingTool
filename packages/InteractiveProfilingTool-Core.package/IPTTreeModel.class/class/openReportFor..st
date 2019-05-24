display profiling results
openReportFor: aMessageTally
	
	| tree rootMessageTallyForUserCalls roots |
	
	rootMessageTallyForUserCalls := self findRootForUserCalls: aMessageTally.
	
	rootMessageTallyForUserCalls
		ifNotNil: [
			roots := self constructWrappedTreeWithRoot: rootMessageTallyForUserCalls]
		ifNil: [
			roots := {}].
	
	tree := self new roots: roots.
	 self open: tree