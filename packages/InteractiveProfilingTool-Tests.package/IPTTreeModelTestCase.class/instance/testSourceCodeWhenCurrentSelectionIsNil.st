as yet unclassified
testSourceCodeWhenCurrentSelectionIsNil

	| tree |
		
	tree := IPTTreeModelMock new.
	tree currentSelection: MessageTallyMock new.
	
	tree currentSelection: nil.
	
	self assert: nil equals: tree selectedMessage.