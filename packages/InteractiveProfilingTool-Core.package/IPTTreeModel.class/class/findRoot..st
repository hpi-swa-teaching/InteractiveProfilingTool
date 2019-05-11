as yet unclassified
findRoot: aTully

	"here we will use BFS to find the real root"
	
	|visited frontier next|
	
	visited := Set new. 
	frontier := Set new.
	frontier add: aTully.
	[(frontier isEmpty) not] whileTrue: [
		next := Set new.
		frontier do: [:item|
				(item receivers) do: [:node| 
						(node method selector asString =  'ensure:')
							ifTrue: [^node].
						(visited includes: node) 
							ifFalse: [visited add: node.
										next add: node].
					]
			 ].
		frontier := next.
	]
	
	