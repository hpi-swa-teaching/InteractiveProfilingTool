user interface
buttonLabel
	"Returns a matching label for the start/stop button depending if profiler is currently profilings or not."
	^ self isCurrentlyProfiling
		ifTrue: [^ 'Stop Profiling']
		ifFalse: [^ 'Start Profiling']