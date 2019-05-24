tree construction
constructTreeOfWrappedMessageTallys: aRootMessageTally withTotalTime: aTotalTimeValue andCallRelevanceLimit: aCallRelevancePercentage
	
	| wrappedNode |
	
	wrappedNode := IPTMessageTallyWrapper new 
		messageTallyRoot: aRootMessageTally;
		totalTimeOfOverallTree: aTotalTimeValue;
		callRelevancePercentage: aCallRelevancePercentage.
		
	wrappedNode receivers: 
		(wrappedNode messageTallyRoot receivers collect: [ 
			:messageTally | self constructTreeOfWrappedMessageTallys: messageTally 
				withTotalTime: aTotalTimeValue 
				andCallRelevanceLimit: aCallRelevancePercentage]).
	
	^ wrappedNode