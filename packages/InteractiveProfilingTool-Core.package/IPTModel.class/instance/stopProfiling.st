profiling
stopProfiling
	"Interrupt a running Profiling and indicate so in the view."
	self isCurrentlyProfiling: false.
	self changed: #buttonLabel