as yet unclassified
constructTreeOfWrappedMessageTallys: aRootMessageTally
	
	| wrappedNode |
	
	wrappedNode := MessageTallyWrapper new messageTallyRoot: aRootMessageTally.
	wrappedNode receivers: 
		(wrappedNode messageTallyRoot receivers collect: [ 
			:messageTally | self constructTreeOfWrappedMessageTallys: messageTally]).
	
	^ wrappedNode