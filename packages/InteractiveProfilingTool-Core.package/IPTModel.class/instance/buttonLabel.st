user interface
buttonLabel
	^ self isCurrentlyProfiling
		ifTrue: [^ 'Stop Profiling']
		ifFalse: [^ 'Start Profiling']
