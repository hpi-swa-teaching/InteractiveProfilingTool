model access
getIcon: aNode

	aNode hasHighRuntime
		ifTrue: [^ self class highRuntimeIcon]
		ifFalse: [^ self class emptyIcon]
	