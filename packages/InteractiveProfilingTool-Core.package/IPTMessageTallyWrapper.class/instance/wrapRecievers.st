wrapping
wrapRecievers
	
	| wrappedReceivers |
	
	wrappedReceivers := self messageTallyRoot receivers collect: [:node | 
		IPTMessageTallyWrapper constructTreeOfWrappedMessageTallys: node 
				withTotalTime: self totalTimeOfOverallTree 
				andCallRelevanceLimit: self callRelevancePercentage].

	self receivers: wrappedReceivers
