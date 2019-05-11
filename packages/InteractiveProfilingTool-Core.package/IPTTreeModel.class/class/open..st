opening
open: aMessageTally
	
	| tree |
	
	tree := self new. 
	tree 
		roots: (OrderedCollection with: (self findRoot: aMessageTally));
		totalTime: aMessageTally tally.
	
	ToolBuilder open: tree