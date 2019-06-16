as yet unclassified
testConstructTreeOfWrappedMessageTallysForEmptyTree

	| wrappedTally |
	
	wrappedTally := IPTMessageTallyWrapper constructTreeOfWrappedMessageTallys: nil withTotalTime: 0.
	
	self assert: wrappedTally isNil