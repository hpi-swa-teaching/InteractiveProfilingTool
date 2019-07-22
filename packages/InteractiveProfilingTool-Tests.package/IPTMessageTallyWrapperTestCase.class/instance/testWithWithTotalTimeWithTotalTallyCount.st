tests
testWithWithTotalTimeWithTotalTallyCount

	| rootNode leafNode wrapper |
	
	rootNode := Mock new.
	leafNode := Mock new.
	
	rootNode expect: #receivers toReturn: {leafNode}.
	leafNode expect: #receivers toReturn: {}.
	
	wrapper := IPTMessageTallyWrapper
		with: rootNode
		withTotalTime: nil
		andTotalTallyCount: nil.
	
	self assert: rootNode identical: wrapper messageTally.
	self assert: leafNode identical: wrapper receivers first messageTally.