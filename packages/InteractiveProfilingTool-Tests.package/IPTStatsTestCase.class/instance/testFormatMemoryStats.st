tests
testFormatMemoryStats

	| formatted |
	
	formatted := model formatMemoryStats.
	
	self assert: (formatted asString beginsWith: 'Memory')