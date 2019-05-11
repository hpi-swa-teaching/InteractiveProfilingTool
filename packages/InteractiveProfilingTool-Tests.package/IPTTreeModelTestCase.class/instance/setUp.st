as yet unclassified
setUp

	| node result |
	
	node := MessageTally new.
	result := node spyEvery: MessageTally defaultPollPeriod on: [5 timesRepeat: [Project current world doOneCycle]].
	
	tallyObject := node

	