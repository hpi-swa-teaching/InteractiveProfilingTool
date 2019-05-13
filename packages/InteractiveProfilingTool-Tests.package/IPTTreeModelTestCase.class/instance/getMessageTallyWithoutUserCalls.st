helpers
getMessageTallyWithoutUserCalls
	
	^ MessageTally new
		spyEvery: MessageTally defaultPollPeriod on: [];
		yourself.