display profiling results
findRootForUserCalls: aMessageTally

	"Exclude the calls made by the profiler from the profiling results. 
	Use breadth first search to find the first function call made by the user."
	
	| visited frontier next |
	
	visited := Set new. 
	frontier := Set with: aMessageTally.
	
	[frontier isEmpty not] whileTrue: [
		next := Set new.
		frontier do: [:item |
				item receivers do: [:node | 
						(node method selector asString =  'ensure:')
							ifTrue: [^ node].
						(visited includes: node) 
							ifFalse: [visited add: node. next add: node]
					]
			 ].
		frontier := next
	]
	
	