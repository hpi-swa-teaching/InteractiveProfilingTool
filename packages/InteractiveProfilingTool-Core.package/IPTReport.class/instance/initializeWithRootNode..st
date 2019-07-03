initialization
initializeWithRootNode: aNode

	aNode
		ifNotNil: [self roots: {aNode}]
		ifNil: [self roots: {}]