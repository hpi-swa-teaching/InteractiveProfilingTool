tests
testGetGarbageCollectionStats

	| stats |
	
	stats := wrappedTallyMock getGarbageCollectionStats.
	
	self assert: (stats at: #full) isDictionary.
	self assert: (stats at: #incremental) isDictionary. 
	self assert: (stats at: #tenures) isNumber.
	self assert: (stats at: #rootOverflows) isNumber
	
	
	
	