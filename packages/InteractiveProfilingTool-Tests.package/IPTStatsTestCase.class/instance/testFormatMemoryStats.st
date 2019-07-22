tests
testFormatMemoryStats

	| formatted |
	
	self setupMemoryTestData.
	formatted := model formatMemoryStats.
	
	self assert: (formatted asString beginsWith: 'Memory')