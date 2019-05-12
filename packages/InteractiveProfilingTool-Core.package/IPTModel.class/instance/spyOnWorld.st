profiling
spyOnWorld

	| model |
	
	model := self.
	^ MessageTally new 
		spyEvery: MessageTally defaultPollPeriod on:  [
			[model isCurrentlyProfiling] whileTrue: [Project current world doOneCycle]];
		yourself