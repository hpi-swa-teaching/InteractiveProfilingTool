tests
testFormatLeavesWithoutLeaves

	| formatted message |

	(model userCallsRoots at: 1) receivers: {}.
	formatted := model formatLeaves.
	message := 'There are no leaves relevant to runtime performance.'.

	self assert: (formatted asString findString: message) > 0