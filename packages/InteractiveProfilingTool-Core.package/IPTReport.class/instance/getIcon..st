model access
getIcon: aNode

	(aNode shouldBeHighlighted)
		ifTrue: [^ self class highRuntimeIcon]
		ifFalse: [^ self class emptyIcon]
	