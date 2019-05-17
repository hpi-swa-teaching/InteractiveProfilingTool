display profiling results
display: aMessageTally
	
	| tree rootMessageTallyForUserCalls roots totalTime |
	
	rootMessageTallyForUserCalls := self findRootForUserCalls: aMessageTally.
	
	roots := rootMessageTallyForUserCalls
		ifNotNil: [{rootMessageTallyForUserCalls}]
		ifNil: [{}].
	
	totalTime := rootMessageTallyForUserCalls
		ifNotNil: [rootMessageTallyForUserCalls tally]
		ifNil: [0].
	
	tree := self new
		roots: roots;
		totalTime: totalTime.
	
	 self show: tree