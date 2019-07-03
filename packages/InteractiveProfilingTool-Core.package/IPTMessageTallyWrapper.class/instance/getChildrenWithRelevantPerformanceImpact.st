information extraction
getChildrenWithRelevantPerformanceImpact

	^ self receivers select: [:node | node isRelevantForPerformance]