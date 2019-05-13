model access
hasRelevantChildren: aMessageTally

	^ (self getChildrenWithRelevantOverallPerformanceImpactFor: aMessageTally) isEmpty not