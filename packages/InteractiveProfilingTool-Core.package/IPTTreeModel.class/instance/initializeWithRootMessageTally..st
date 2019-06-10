as yet unclassified
initializeWithRootMessageTally: aMessageTally

	aMessageTally
		ifNotNil: [
			self 
				roots: {aMessageTally};
				totalTime: aMessageTally tally]
		ifNil: [
			self
				roots: {};
				totalTime: 0]