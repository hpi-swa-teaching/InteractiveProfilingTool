information extraction
getChildrenWithRelevantPerformanceImpactWithLimit: aNumericalPerformanceRelevanceLimit andTotalTime: aTotalTimeValue

	^ self receivers select: [:node | (node getRelativeTimeRegarding: aTotalTimeValue) > aNumericalPerformanceRelevanceLimit]