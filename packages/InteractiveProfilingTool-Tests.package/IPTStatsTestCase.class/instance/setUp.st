running
setUp

	| tallyMock wrapperMock nestedWrapperMock |

	tallyMock := MessageTallyMock new
		method: Boolean >> #ifTrue:;
		tally: 100;
		time: 666;
		receivers: {};
		gcStats: #(100000 300000 0 nil nil 0 111 222 333 444 555 0 0 0 0 18313738 0 0 0 0 8 666 0 0 0 0 0 0 0 0 0 0 14 518991280 2783 27573 0 0 0 0 0 0 0 0 0 0 0 0 0 nil nil 0 0 -11992 0.0 53273 1198 11943 11446 45873 7 5 5 -206 0 0 0 0.2506983251573729 0 0 0 0 0).
	
	wrapperMock := MessageTallyWrapperMock new
		messageTally: tallyMock;
		totalTimeOfOverallTree: 200;
		receivers: {}.
		
	nestedWrapperMock := wrapperMock clone;
		receivers: { wrapperMock clone }.

	model := IPTStats new
		root: nestedWrapperMock;
		userCallsRoots: { nestedWrapperMock }.
		
	builder := ToolBuilder new