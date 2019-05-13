model access
getChildrenWithRelevantPerformanceImpact: aMessageTally

	^ aMessageTally receivers select: [:node | self isRelevantForOverallPerformance: node]