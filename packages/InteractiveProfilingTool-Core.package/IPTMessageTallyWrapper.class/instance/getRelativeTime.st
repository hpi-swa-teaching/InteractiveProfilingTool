information extraction
getRelativeTime  
  
	"All calls in the tree have a time of 0. Catch this case to avoid ZeroDivide Errors later on."	
	self totalTimeOfOverallTree isZero ifTrue: [^ 100]. 
	
	^ self messageTally tally / self totalTallyCountOfOverallTree * 100.0