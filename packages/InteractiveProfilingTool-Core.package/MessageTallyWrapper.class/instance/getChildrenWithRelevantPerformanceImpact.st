information extraction
getChildrenWithRelevantPerformanceImpact

	^ self receivers select: [:node | node getRelativeTime > self callRelevancePercentage]