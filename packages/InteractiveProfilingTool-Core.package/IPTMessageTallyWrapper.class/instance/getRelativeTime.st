information extraction
getRelativeTime
	
	(self totalTimeOfOverallTree isZero)
		ifTrue: [^ 100.0] "All calls in the tree have a time of 0. Catch this case to avoid ZeroDivide Errors later on."
		ifFalse: [^ self getOwnTallyCount / self totalTallyCountOfOverallTree * 100.0]