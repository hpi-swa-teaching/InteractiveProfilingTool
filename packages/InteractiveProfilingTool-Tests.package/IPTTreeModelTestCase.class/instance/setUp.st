running
setUp

	| node result |
	
	describedClass := IPTTreeModelMock.

	node := MessageTally new.
	result := node spyEvery: MessageTally defaultPollPeriod on: [5 timesRepeat: [Project current world doOneCycle]].
	tallyObject := node.
	
	node := MessageTally new.
	result := node spyEvery: MessageTally defaultPollPeriod on: [].
	tallyObjectTimeZero := node.

	