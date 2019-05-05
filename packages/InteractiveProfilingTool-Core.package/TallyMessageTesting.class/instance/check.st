as yet unclassified
check

	| messageTally |

  	messageTally := MessageTally new.
 	messageTally 
 		spyEvery: MessageTally
 		defaultPollPeriod on:  [[self isCurrentlyProfiling] whileTrue: [Project current world doOneCycle]].

  	MessageTally showReport: messageTally.
	^messageTally.
