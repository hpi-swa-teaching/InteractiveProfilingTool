display profiling results
withRoot: aWrappedMessageTally withUserCallsRoots: aCollection

	^ self new
		root: aWrappedMessageTally;
		userCallsRoots: aCollection;
		yourself