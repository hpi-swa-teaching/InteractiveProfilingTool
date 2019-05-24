display profiling results
openReportFor: aMessageTally
	
	| tree rootMessageTallyForUserCalls roots totalTime |
	
	rootMessageTallyForUserCalls := self findRootForUserCalls: aMessageTally.
	
	rootMessageTallyForUserCalls
		ifNotNil: [
			totalTime := rootMessageTallyForUserCalls tally.
			roots := {
				MessageTallyWrapper constructTreeOfWrappedMessageTallys: rootMessageTallyForUserCalls 
					withTotalTime: totalTime 
					andCallRelevanceLimit: self new callRelevancePercentage}]
		ifNil: [
			roots := {}.
			totalTime := 0].
	
	tree := self new
		roots: roots;
		totalTime: totalTime.
	
	 self open: tree