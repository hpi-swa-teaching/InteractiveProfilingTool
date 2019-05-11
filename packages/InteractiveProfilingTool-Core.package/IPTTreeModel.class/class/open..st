opening
open: aMessageTally
	
	| tree |
	
	tree := self new. 
	tree 
		roots: (OrderedCollection with: aMessageTally);
		totalTime: aMessageTally tally.
	
	ToolBuilder open: tree