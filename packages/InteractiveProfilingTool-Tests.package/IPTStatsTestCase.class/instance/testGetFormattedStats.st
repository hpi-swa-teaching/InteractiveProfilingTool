tests
testGetFormattedStats

	| formatted sections |
	
	self setupGarbageCollectionTestData.
	self setupMemoryTestData.
	self setupLeavesTestData.

	formatted := model getFormattedStats.
	sections := formatted splitBy: (String cr, String cr).
	
	self assert: 3 equals: sections size