tests
testFormatGarbageCollectionStats

	| formatted |
	
	self setupGarbageCollectionTestData.
	formatted := model formatGarbageCollectionStats.
	
	self assert: (formatted asString beginsWith: 'Garbage Collector')