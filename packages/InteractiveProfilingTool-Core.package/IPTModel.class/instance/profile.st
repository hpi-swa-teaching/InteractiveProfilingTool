profiling
profile
	"Start Profiling of the whole world and indicate so in the View. Shows the report of
	the created MessageTally object when interrupted."
	
	| profilingResult |
	
	self isCurrentlyProfiling:  true.
	self changed: #buttonLabel.
	
	profilingResult := self getMessageTally.
	IPTTreeModel display: profilingResult
	
