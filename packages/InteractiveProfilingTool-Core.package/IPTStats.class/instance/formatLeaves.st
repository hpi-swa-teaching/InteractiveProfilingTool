formatting
formatLeaves

	| lines leaves |
	
	leaves := OrderedCollection new.
	leaves addAll: (self userCallsRoot getLeaves).
	lines := leaves collect: [ :leaf | leaf getLabel ].
	
	 ^ self formatStats: lines withHeading: 'Leaves'