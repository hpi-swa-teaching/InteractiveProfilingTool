formatting
formatLeaves

	| lines |
	
	lines := self userCallsRoot getLeaves collect: [:leaf | leaf getLabel].
	
	 ^ self formatStats: lines withHeading: 'Leaves'