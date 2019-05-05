rotate scale and flex
referencePositionInWorld: aPoint
	| localPosition |
	localPosition := owner
		ifNil: [aPoint]
		ifNotNil: [(owner transformFrom: self world) globalPointToLocal: aPoint].

	self referencePosition: localPosition
