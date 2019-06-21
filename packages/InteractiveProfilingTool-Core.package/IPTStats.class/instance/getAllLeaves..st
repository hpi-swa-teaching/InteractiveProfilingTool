as yet unclassified
getAllLeaves: aCollection 

	| leaves |
	
	leaves := OrderedCollection new. 
	
	aCollection do: [ :item | leaves union: item getLeavesWithRelevantPerformance].
	
	^ leaves
	
	