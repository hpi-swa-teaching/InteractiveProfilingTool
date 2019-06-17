tests
testSourceCodeWhenCurrentSelectionIsNil

	| tree |
		
	tree := IPTReportMock new
		currentSelection: MessageTallyMock new;
		currentSelection:  nil.		
	
	self assert: tree selectedMessage isNil