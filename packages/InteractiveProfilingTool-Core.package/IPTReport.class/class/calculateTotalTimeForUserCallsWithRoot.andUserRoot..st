helpers
calculateTotalTimeForUserCallsWithRoot: aRootMessageTally andUserRoot: aUserRootMessageTally

	^ aRootMessageTally time * (aUserRootMessageTally tally / aRootMessageTally tally)
	