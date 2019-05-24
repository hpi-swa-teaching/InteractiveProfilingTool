model access
getChildrenWithRelevantPerformanceImpact: aNode

	^ aNode getChildrenWithRelevantPerformanceImpactWithLimit: (self callRelevancePercentage) andTotalTime: self totalTime