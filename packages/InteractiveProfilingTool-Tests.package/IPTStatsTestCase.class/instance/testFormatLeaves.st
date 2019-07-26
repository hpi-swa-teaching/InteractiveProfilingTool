tests
testFormatLeaves

	| formatted |

	self setupLeavesTestData.
	formatted := model formatLeaves.
	
	self assert: (formatted beginsWith: 'Leaves').
	self assert: (formatted lineCount = 2).
	self assert: (formatted asString findString: 'Das Leben ist nicht immer nur Pommes und Disco - Christiann Steiffen') > 0