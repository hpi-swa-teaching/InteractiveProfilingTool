information extraction
getChildrenWithRelevantPerformanceImpact: aNumericalPerformanceRelevanceLimit

	^ self messageTallyRoot receivers select: [:node | node getRelativeTime > aNumericalPerformanceRelevanceLimit]