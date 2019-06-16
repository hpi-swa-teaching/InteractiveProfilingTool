as yet unclassified
testConstructTreeOfWrappedMessageTallysForWideCallTree

	| tallyMockRoot tallyMockLeftLeaf tallyMockRightLeaf wrappedTally |
	
	tallyMockLeftLeaf := MessageTallyMock new
		method: Boolean >> #ifFalse:;
		tally: 25;
		receivers: {}.
	tallyMockRightLeaf := MessageTallyMock new
		method: Boolean >> #ifTrue:;
		tally: 50;
		receivers: {}.
	tallyMockRoot := MessageTallyMock new
		method: Boolean >> #ifFalse:;
		tally: 100;
		receivers: {tallyMockLeftLeaf. tallyMockRightLeaf}.	
	
	wrappedTally := IPTMessageTallyWrapper constructTreeOfWrappedMessageTallys: tallyMockRoot withTotalTime: 500.
	
	self assert: tallyMockRoot identical: wrappedTally messageTally.
	self assert: tallyMockLeftLeaf identical: wrappedTally receivers first messageTally.
	self assert: tallyMockRightLeaf identical: wrappedTally receivers last messageTally