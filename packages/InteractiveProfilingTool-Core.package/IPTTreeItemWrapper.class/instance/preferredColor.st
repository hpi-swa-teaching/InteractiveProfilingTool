as yet unclassified
preferredColor

	^ self matchesFilter
		ifTrue: [ Color black ]
		ifFalse: [ Color gray ]