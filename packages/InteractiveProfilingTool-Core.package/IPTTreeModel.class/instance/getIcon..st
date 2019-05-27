model access
getIcon: aMessageTally

	(self shouldBeHighlighted: aMessageTally)
		ifTrue: [^ self class highRuntimeIcon]
		ifFalse: [^ nil]
	