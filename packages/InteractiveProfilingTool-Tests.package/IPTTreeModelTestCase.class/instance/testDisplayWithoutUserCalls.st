tests
testDisplayWithoutUserCalls

	self shouldnt: (describedClass display: self getMessageTallyWithoutUserCalls) raise: Error