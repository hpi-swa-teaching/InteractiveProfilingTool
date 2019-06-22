as yet unclassified
formatLeaves

	| lines leaves |
	
	leaves := self getAllLeaves: self userCallsRoot.
		
	lines := leaves
		replace: [ :leave | leave getLabel ];
		ifEmpty: [ {'There are no leaves relevant to runtime performance.' }].
	
	 ^ self formatStats: lines withHeading: 'Leaves'.