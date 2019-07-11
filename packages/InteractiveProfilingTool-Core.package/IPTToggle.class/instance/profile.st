profiling
profile
	"May only be stopped by an interrupt from the user that triggers `stopProfiling`."
	
	self isCurrentlyProfiling: true.
	self changed: #buttonLabel.
	
	self showReportFor: self spyOnWorld
