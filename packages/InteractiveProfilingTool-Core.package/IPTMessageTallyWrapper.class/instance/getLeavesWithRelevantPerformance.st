information extraction
getLeavesWithRelevantPerformance 
	
	| frontier next leaves|
	
	frontier := Set with: self.
	leaves := OrderedCollection new. 
	
	[frontier isEmpty not] whileTrue: [
		next := Set new.
		frontier do: [:item |
			(item receivers isEmpty) 
			ifFalse: [item receivers do: [:node | next add: node]]
			ifTrue:[
				(item isRelevantForPerformance)
				 ifTrue: [leaves add: item]].
			].
		frontier := next].
	
	^ leaves
	