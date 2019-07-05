wrapping
wrapReceivers
	
	| wrappedReceivers |
	
	wrappedReceivers := self messageTally receivers collect: [:node | 
		IPTMessageTallyWrapper with: node
			withTotalTime: self totalTimeOfOverallTree 
			andTotalTallyCount: self totalTallyCountOfOverallTree].

	self receivers: wrappedReceivers
