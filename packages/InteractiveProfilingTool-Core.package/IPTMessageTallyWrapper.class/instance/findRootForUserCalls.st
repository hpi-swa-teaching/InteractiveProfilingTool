information extraction
findRootForUserCalls

	"Exclude the calls made by the profiler from the profiling results. 
	Use breadth first search to find the first function call made by the user."
	
	| frontier next |
	
	frontier := Set with: self.
	
	[frontier isEmpty not] whileTrue: [
		next := Set new.
		frontier do: [:item |
			item receivers do: [:node | 
				(node getSelectorName =  'ensure:')
					ifTrue: [^ node].
				next add: node]].
		frontier := next].
	
	^ nil