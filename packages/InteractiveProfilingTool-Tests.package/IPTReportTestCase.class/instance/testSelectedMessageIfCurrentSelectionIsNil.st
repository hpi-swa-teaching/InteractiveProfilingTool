tests
testSelectedMessageIfCurrentSelectionIsNil
		
	model currentSelection: nil.	
	
	self assert: model selectedMessage isNil.