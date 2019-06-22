tests
testFormatLeaves

	| formatted |

	formatted := model formatLeaves.
	
	self assert: (formatted beginsWith: 'Leaves').
	self assert: (formatted lineCount = 2).
	self assert: (formatted asString includesSubstring: 'Boolean >> ifTrue:').