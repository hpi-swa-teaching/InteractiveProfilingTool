initialization
initializeTotalTimeIfNecessaryUsing: aMessageTally

	self totalTime ifNil: [self totalTime: aMessageTally tally]