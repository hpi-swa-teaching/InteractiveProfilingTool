as yet unclassified
startProfiling
	
	| model messageTally |
	
	model := self.
	
	model shouldContinueProfiling: true.
	model changed: #buttonLabel.

	messageTally := MessageTally new.
	messageTally 
		spyEvery: MessageTally
		defaultPollPeriod on:  [[model shouldContinueProfiling] whileTrue: [Project current world doOneCycle]].
	
	MessageTally showReport: messageTally.
	IPTTreeModel open: messageTally.
	