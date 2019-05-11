model_access
label: aMessageTally

	|selector class absoluteTime percentageOfTotalTime timeFormattedForOutput |

	selector := (aMessageTally method selector) asString.
	class := (aMessageTally method methodClass) asString.
	absoluteTime := aMessageTally tally asFloat.
	
	self totalTime ifNil: [self totalTime: aMessageTally tally].
	percentageOfTotalTime := absoluteTime / self totalTime * 100.0.
	
	timeFormattedForOutput := (percentageOfTotalTime printShowingDecimalPlaces: 1) asString , ' % {' , absoluteTime asString, ' ms} '. 

	^(timeFormattedForOutput, class, ' >> ', selector)