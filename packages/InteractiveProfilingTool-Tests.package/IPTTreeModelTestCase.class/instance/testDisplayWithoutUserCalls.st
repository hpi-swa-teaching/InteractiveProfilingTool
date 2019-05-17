tests
testDisplayWithoutUserCalls

	self shouldnt: (describedClass openReportFor: self getMessageTallyWithoutUserCalls) raise: Error