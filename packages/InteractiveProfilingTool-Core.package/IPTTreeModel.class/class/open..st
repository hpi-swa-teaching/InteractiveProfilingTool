as yet unclassified
open: aTally
	|array tree|
	array := Array new: 1.
	array at: 1 put: aTally.
	tree := self new. 
	tree roots: array.
	tree total: aTally tally.
	tree totalTime: aTally time.
	ToolBuilder open: tree.