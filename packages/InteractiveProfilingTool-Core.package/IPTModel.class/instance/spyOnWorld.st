profiling
spyOnWorld

	^ MessageTally new 
		spyEvery: MessageTally defaultPollPeriod on:  [
			[self isCurrentlyProfiling] whileTrue: [Project current world doOneCycle]];
		yourself