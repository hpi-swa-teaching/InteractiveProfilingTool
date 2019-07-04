tests
testFormatGarbageCollectionStats

	| formatted |
	
	formatted := model formatGarbageCollectionStats.
	
	self assert: (formatted asString beginsWith: 'Garbage Collector')