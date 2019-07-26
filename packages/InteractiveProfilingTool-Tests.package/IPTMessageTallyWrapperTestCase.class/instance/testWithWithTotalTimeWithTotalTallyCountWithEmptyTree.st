tests
testWithWithTotalTimeWithTotalTallyCountWithEmptyTree

	| wrappedTally |
	
	wrappedTally := IPTMessageTallyWrapper
		with: nil
		withTotalTime: nil
		andTotalTallyCount: nil.
	
	self assert: wrappedTally isNil