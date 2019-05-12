filter children
getChildrenWithRelevantOverallPerformanceImpactFor: aMessageTally
	
	^ aMessageTally receivers select: [:node | self isRelevantForOverallPerformance: node]
	
	
	