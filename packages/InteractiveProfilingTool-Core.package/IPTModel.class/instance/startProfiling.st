profiling
startProfiling
	"Start Profiling of the whole world and indicate so in the View. Shows the report of
	the created MessageTally object when interrupted."
	| model messageTally |
	
	model := self.
	
	model isCurrentlyProfiling:  true.
	model changed: #buttonLabel.

	messageTally := MessageTally new.
	messageTally 
		spyEvery: MessageTally
		defaultPollPeriod on:  [[model isCurrentlyProfiling] whileTrue: [Project current world doOneCycle]].
	
	MessageTally showReport: messageTally.
	
