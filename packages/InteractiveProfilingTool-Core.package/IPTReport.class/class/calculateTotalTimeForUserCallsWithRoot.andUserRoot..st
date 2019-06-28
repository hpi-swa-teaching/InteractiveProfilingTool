helpers
calculateTotalTimeForUserCallsWithRoot: aRootMessageTally andUserRoot: aUserRootMessageTally

	aUserRootMessageTally 
		ifNil: [^ 0].
	
	^ aRootMessageTally time * (aUserRootMessageTally tally / aRootMessageTally tally)
	