display
icon

	^ self item hasHighRuntime
		ifTrue: [self class highRuntimeIcon]
		ifFalse: [self class emptyIcon]