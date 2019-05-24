display profiling results
openReportFor: aMessageTally
	
	| tree rootMessageTallyForUserCalls roots totalTime |
	
	rootMessageTallyForUserCalls := self findRootForUserCalls: aMessageTally.
	
	rootMessageTallyForUserCalls
		ifNotNil: [
			roots := {MessageTallyWrapper constructTreeOfWrappedMessageTallys: rootMessageTallyForUserCalls}.
			totalTime := roots first getAbsoluteTime]
		ifNil: [
			roots := {}.
			totalTime := 0].
	
	tree := self new
		roots: roots;
		totalTime: totalTime.
	
	 self open: tree