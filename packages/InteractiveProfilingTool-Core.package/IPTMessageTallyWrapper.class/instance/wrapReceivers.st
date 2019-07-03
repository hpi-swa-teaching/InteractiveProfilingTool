wrapping
wrapReceivers
	
	| wrappedReceivers |
	
	wrappedReceivers := self messageTally receivers collect: [:node | 
		IPTMessageTallyWrapper constructTreeOfWrappedMessageTallys: node withTotalTime: self totalTimeOfOverallTree].

	self receivers: wrappedReceivers
