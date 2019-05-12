filter children
isRelevantForOverallPerformance: aMessageTally

	^ (self getRelativeTimeOf: aMessageTally) > (self callRelevancePercentage)