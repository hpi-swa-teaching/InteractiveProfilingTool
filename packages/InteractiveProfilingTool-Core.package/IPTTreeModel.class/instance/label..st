model_access
label: aMessageTally

	|selector class absoluteTime percentageOfTotalTime timeFormattedForOutput |

	selector := (aMessageTally method selector) asString.
	class := (aMessageTally method methodClass) asString.
	absoluteTime := aMessageTally tally asFloat.
	percentageOfTotalTime := absoluteTime / self total * 100.0.
	
	timeFormattedForOutput := (percentageOfTotalTime printShowingDecimalPlaces: 1) asString , ' % {' , absoluteTime asString, ' ms} '. 

	^(timeFormattedForOutput, class, ' >> ', selector)