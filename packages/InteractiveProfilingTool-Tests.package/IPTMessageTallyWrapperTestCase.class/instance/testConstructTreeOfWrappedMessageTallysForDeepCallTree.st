tests
testConstructTreeOfWrappedMessageTallysForDeepCallTree

	| tallyMockRoot tallyMockInnerNode tallyMockLeaf wrappedTally |
	
	tallyMockLeaf := MessageTallyMock new
		method: Boolean >> #ifFalse:;
		tally: 25;
		receivers: {}.
	tallyMockInnerNode := MessageTallyMock new
		method: Boolean >> #ifTrue:;
		tally: 50;
		receivers: {tallyMockLeaf}.
	tallyMockRoot := MessageTallyMock new
		method: Boolean >> #ifFalse:;
		tally: 100;
		receivers: {tallyMockInnerNode}.	
	
	wrappedTally := IPTMessageTallyWrapper with: tallyMockRoot withTotalTime: 500 andTotalTallyCount: 500.
	
	self assert: tallyMockRoot identical: wrappedTally messageTally.
	self assert: tallyMockInnerNode identical: wrappedTally receivers first messageTally.
	self assert: tallyMockLeaf identical: wrappedTally receivers first receivers first messageTally.
	