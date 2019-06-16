initialization
initializeWithRootNode: aNode

	aNode
		ifNotNil: [
			self 
				roots: {aNode};
				totalTime: aNode totalTimeOfOverallTree]
		ifNil: [
			self
				roots: {};
				totalTime: 0]