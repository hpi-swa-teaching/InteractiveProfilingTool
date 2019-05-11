opening
open: aMessageTally
	
	| tree |
	
	tree := self new. 
	tree 
		roots: (OrderedCollection with: aMessageTally);
		total: aMessageTally tally;
		totalTime: aMessageTally time.
	
	ToolBuilder open: tree.