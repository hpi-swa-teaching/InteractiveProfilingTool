tests
testGetFormattedStatsBoldHeadings

	| formatted boldTextPosition |
	
	self setupGarbageCollectionTestData.
	self setupMemoryTestData.
	self setupLeavesTestData.

	formatted := model getFormattedStats.
	boldTextPosition := formatted find: (TextEmphasis bold).
	
	self assert: (boldTextPosition notNil)