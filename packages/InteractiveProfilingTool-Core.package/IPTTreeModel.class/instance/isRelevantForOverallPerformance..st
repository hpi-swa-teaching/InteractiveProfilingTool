filter children
isRelevantForOverallPerformance: aMessageTally

	^ (self getRelativeTime: aMessageTally) >= (self callRelevancePercentage)