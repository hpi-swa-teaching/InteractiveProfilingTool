profiling
profileBlock: aBlock

	self isCurrentlyProfiling: true.
	self changed: #buttonLabel.
	
	self showReportFor: (self spyOnBlock: aBlock).
	
	self stopProfiling