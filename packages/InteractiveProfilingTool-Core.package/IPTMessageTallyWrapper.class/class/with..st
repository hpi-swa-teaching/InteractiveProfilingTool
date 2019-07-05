tree construction
with: aMessageTally

	^ self
		with: aMessageTally
		withTotalTime: (aMessageTally time)
		andTotalTallyCount: (aMessageTally tally)