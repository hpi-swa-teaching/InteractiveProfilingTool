model access
hasChildrenWithRelevantPerformanceImpact: aNode

	^ aNode hasChildrenWithRelevantPerformanceImpactWithLimit: (self callRelevancePercentage) andTotalTime: self totalTime