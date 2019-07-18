information extraction
getRelativeTime  
  
	"Catch this case to avoid ZeroDivide Errors later on."	
	self totalTallyCountOfOverallTree isZero ifTrue: [^ 100]. 
	
	^ self messageTally tally / self totalTallyCountOfOverallTree * 100.0