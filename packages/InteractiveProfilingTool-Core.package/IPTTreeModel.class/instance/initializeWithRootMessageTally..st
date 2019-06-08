as yet unclassified
initializeWithRootMessageTally: aMessageTally

	aMessageTally
		ifNotNil: [
			self roots: {aMessageTally}.
			self totalTime: aMessageTally tally]
		ifNil: [
			self roots: {}.
			self totalTime: 0].

	^ self