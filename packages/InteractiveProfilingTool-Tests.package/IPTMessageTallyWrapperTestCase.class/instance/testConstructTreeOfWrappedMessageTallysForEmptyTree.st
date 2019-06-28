tests
testConstructTreeOfWrappedMessageTallysForEmptyTree

	| wrappedTally |
	
	wrappedTally := IPTMessageTallyWrapper constructTreeOfWrappedMessageTallys: nil withTotalTime: 0 andTotalTallyCount: 0.
	
	self assert: wrappedTally isNil