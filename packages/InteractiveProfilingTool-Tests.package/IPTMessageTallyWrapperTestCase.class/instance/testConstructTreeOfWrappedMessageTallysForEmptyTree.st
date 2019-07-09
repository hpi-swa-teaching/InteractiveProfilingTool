tests
testConstructTreeOfWrappedMessageTallysForEmptyTree

	| wrappedTally |
	
	wrappedTally := IPTMessageTallyWrapper with: nil withTotalTime: 0 andTotalTallyCount: 0.
	
	self assert: wrappedTally isNil