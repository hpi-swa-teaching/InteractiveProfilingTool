information extraction
getRelativeTime
	
	(self totalTimeOfOverallTree = 0)
		ifTrue: [^ 100.0] "All calls in the tree have a time of 0. Catch this case to avoid ZeroDivide Error."
		ifFalse: [^ self getAbsoluteTime / self totalTimeOfOverallTree * 100.0]