profiling
spyOnWorld

	^ MessageTally new 
		spyEvery: MessageTally defaultPollPeriod on:  [];
		yourself