formatting
formatLeaves

	| lines leaves |
	
	leaves := OrderedCollection new.
	self userCallsRoots do: [ :root | leaves addAll: (root getLeaves) ].
	lines := leaves collect: [ :leaf | leaf getLabel ].
	
	 ^ self formatStats: lines withHeading: 'Leaves'