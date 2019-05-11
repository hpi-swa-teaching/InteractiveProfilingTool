as yet unclassified
filterRelevantTimeNodes: tallyReceivers

	|nodes percentageOfTotalTime absoluteTime defaultPercentLimit|
	
	nodes := Set new.
	defaultPercentLimit := 1.
	
	tallyReceivers do:[:node| 
			absoluteTime := node tally asFloat.
			percentageOfTotalTime := absoluteTime / self totalTime * 100.0.
			(percentageOfTotalTime > defaultPercentLimit)
				ifTrue: [nodes add: node].
			].
		
	^nodes.	
	
	
	