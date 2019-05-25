display profiling results
openReportFor: aMessageTally
	
	| tree roots |
	
	roots := self constructTreeForUserCallsFrom: aMessageTally.
	tree := self new roots: roots.
	
	 self open: tree