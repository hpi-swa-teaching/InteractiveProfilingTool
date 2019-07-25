messageTally access
getLeaves 
	
	| leaves |
	
	leaves := OrderedCollection new.

	self getReceiversWithRelevantRuntime do: [:receiver |
		receiver hasReceiversWithRelevantRuntime
			ifFalse: [leaves add: receiver]
			ifTrue: [leaves addAll: (receiver getLeaves)]].
	
	^ leaves