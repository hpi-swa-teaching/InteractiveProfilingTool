model access
getIcon: aNode

	(aNode getRelativeTime >= aNode highlightingThreshold)
		ifTrue: [^ self class highRuntimeIcon]
		ifFalse: [^ self class emptyIcon]
	