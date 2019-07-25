helpers
setupLeavesTestData

	| childNode label |

	label := 'Das Leben ist nicht immer nur Pommes und Disco - Christiann Steiffen'.
	childNode := Mock expect: #getLabel toReturn: label.
	
	model userCallsRoot expect: #getLeaves toReturn: {childNode}.