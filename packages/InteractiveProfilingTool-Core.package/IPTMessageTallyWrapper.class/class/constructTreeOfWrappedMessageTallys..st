tree construction
constructTreeOfWrappedMessageTallys: aRootMessageTally
	
	^ self constructTreeOfWrappedMessageTallys: aRootMessageTally withTotalTime: aRootMessageTally tally.