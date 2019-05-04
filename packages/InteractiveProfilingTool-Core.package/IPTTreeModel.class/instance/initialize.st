as yet unclassified
initialize
	
	| node |
	super initialize.
	node := MessageTally new.
	node spyEvery: 1 on: [10 timesRepeat: [Transcript show: 'Speicher Fotze'; cr]].
	self rootMessageTally: node.