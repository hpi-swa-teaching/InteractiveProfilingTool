as yet unclassified
openStatsFor: aWrappedMessageTally

	| model |
	
	model := self new
		root: aWrappedMessageTally;
		yourself.
	
	ToolBuilder open: model
	