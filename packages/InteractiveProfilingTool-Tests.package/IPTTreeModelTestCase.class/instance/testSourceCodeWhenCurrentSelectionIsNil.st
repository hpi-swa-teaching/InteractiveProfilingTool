as yet unclassified
testSourceCodeWhenCurrentSelectionIsNil

	| tree |
		
	tree := IPTTreeModelMock new
		currentSelection: MessageTallyMock new;
		currentSelection:  nil.		
	
	self assert: tree selectedMessage isNil