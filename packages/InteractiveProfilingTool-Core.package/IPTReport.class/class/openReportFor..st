display profiling results
openReportFor: aMessageTally
	
	| tree rootNode |
	
	rootNode := IPTMessageTallyWrapper with: aMessageTally.
	tree := self with: rootNode.
	
	self open: tree