model access
hasChildren: aMessageTally

	^ (self getChildrenWithRelevantOverallPerformanceImpactFor: aMessageTally) isEmpty not