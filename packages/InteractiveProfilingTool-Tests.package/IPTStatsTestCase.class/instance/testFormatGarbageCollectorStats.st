tests
testFormatGarbageCollectorStats

	| formatted |
	
	formatted := model formatGarbageCollectorStats.
	
	self assert: (formatted asString beginsWith: 'Garbage Collector')