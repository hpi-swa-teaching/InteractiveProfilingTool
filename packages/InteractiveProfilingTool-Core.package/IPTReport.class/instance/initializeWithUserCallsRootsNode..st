initialization
initializeWithUserCallsRootsNode: aNode

	aNode
		ifNotNil: [self userCallsRoots: {aNode}]
		ifNil: [self userCallsRoots: {}]