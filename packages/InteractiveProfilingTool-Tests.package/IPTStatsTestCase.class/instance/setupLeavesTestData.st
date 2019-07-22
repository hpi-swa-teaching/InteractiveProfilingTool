helpers
setupLeavesTestData

	| childNode label |

	label := 'Das Leben ist nicht immer nur Pommes und Disco - Christiann Steiffen'.
	childNode := Mock expect: #getLabel toReturn: label.
	
	model userCallsRoots first expect: #getLeaves toReturn: {childNode}.