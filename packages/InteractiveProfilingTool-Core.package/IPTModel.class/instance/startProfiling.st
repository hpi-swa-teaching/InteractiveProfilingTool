as yet unclassified
startProfiling
	
	| model |
	
	model := self.
	
	model shouldContinueProfiling: true.
	model changed: #buttonLabel.

	MessageTally spyOn:
		[[model shouldContinueProfiling] whileTrue: [Project current world doOneCycle]]