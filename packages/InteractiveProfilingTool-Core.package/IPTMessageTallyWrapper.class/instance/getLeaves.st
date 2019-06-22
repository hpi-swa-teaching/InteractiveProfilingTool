information extraction
getLeaves 
	
	| leaves |
	
	leaves := OrderedCollection new.

	self getChildrenWithRelevantPerformanceImpact do: [ :child |
		child hasChildrenWithRelevantPerformanceImpact
			ifFalse: [ leaves add: child ]
			ifTrue: [ leaves addAll: (child getLeaves) ]].
	
	^ leaves