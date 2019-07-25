profiling
spyOnWorld

	| messageTally |
	
	messageTally := MessageTally new.
	messageTally 
		spyEvery: MessageTally defaultPollPeriod 
		on: [[self isCurrentlyProfiling] whileTrue: [Project current world doOneCycle]].
	
	^ messageTally