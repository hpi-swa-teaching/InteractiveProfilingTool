tests
testDisplayWithoutUserCalls

	self shouldnt: (IPTTreeModel display: self getMessageTallyWithoutUserCalls) raise: Error