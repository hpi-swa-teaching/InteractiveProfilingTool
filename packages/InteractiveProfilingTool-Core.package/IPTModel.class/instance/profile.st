profiling
profile
	"Start profiling of the whole world and ensure the view is updated
	accordingly. May only be stopped by an interrupt from the user
	that triggers `stopProfiling`. Show a report after completion."
	
	| profilingResult |
	
	self isCurrentlyProfiling:  true.
	self changed: #buttonLabel.
	
	profilingResult := self spyOnWorld.
	IPTTreeModel display: profilingResult
	
