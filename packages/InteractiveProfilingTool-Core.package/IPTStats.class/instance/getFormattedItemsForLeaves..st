as yet unclassified
getFormattedItemsForLeaves: aCollection
	
	| items |
	
	items := Text new.
	
	aCollection do: [ :item | items append: (item getLabel, String cr)].
	
	(aCollection isEmpty) ifTrue: [items append: 'No leave with relevant performance exists'].
					
	^ items