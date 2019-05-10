profiling
getMessageTally

	^ MessageTally new 
		spyEvery: MessageTally defaultPollPeriod on:  [];
		yourself