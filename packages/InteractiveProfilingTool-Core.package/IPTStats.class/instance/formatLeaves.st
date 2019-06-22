formatting
formatLeaves

	| lines leaves |
	
	leaves := OrderedCollection new.
	self userCallsRoots do: [ :root | leaves addAll: (root getLeaves) ].
		
	lines := leaves collect: [ :leaf | leaf getLabel ].
	lines ifEmpty: [ lines add: 'There are no leaves relevant to runtime performance.' ].
	
	 ^ self formatStats: lines withHeading: 'Leaves'.