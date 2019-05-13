profiling
stopProfiling
	"Interrupt a running profiling process"
	
	self isCurrentlyProfiling: false.
	self changed: #buttonLabel