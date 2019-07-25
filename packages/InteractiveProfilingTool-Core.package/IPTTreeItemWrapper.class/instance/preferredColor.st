display
preferredColor

	^ self matchesFilter
		ifTrue: [Color black]
		ifFalse: [Color gray]