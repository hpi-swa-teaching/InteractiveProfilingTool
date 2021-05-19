profiling
spyOnBlock: aBlock

	| messageTally |
	messageTally := MessageTally new.
	messageTally spyEvery: MessageTally defaultPollPeriod on: aBlock.
	^ messageTally