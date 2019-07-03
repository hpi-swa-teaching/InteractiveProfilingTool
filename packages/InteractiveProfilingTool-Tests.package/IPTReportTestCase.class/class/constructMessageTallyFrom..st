helpers
constructMessageTallyFrom: aBlockClosure

	| node result |

	node := MessageTally new.
	result := node spyEvery: MessageTally defaultPollPeriod on: aBlockClosure.
	
	^ node