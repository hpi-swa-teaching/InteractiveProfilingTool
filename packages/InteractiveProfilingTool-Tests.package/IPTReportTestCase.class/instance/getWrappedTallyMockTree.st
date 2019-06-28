helpers
getWrappedTallyMockTree

	| tallyMockInnerNode tallyMockInnerNode2 tallyMockLeaf tallyMockRoot |
	
	tallyMockLeaf := MessageTallyMock new
		method: Morph >> #delete;
		tally: 25;
		receivers: {}.
	
	tallyMockInnerNode2 := MessageTallyMock new
		method: Boolean >> #ifFalse:;
		tally: 100;
		receivers: {tallyMockLeaf}.
			
	tallyMockInnerNode := MessageTallyMock new
		method: BlockClosure >> #ensure:;
		tally: 50;
		receivers: {tallyMockInnerNode2}.
		
	tallyMockRoot := MessageTallyMock new
		method: Boolean >> #ifTrue:;
		tally: 100;
		receivers: {tallyMockInnerNode}.	
	
	wrappedTallyTree := IPTMessageTallyWrapper constructTreeOfWrappedMessageTallys: tallyMockRoot withTotalTime: 500.
	
	^ wrappedTallyTree