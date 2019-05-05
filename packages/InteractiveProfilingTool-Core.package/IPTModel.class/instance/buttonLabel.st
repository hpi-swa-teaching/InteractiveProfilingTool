as yet unclassified
buttonLabel

	^ self shouldContinueProfiling
		ifTrue: [^ 'Stop Profiling']
		ifFalse: [^ 'Start Profiling']