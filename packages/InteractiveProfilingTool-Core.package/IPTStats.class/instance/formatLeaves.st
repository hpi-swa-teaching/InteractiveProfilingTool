formatting
formatLeaves

	| lines leaves |
	
	leaves := OrderedCollection new.
	self userCallsRoots do: [ :root | leaves addAll: (root getLeaves) ].
		
	lines := leaves collect: [ :leaf | leaf getLabel ].
	lines ifEmpty: [ lines add: self noLeavesMessage ].
	
	 ^ self formatStats: lines withHeading: 'Leaves'.