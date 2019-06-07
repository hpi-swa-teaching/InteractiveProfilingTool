as yet unclassified
selectedMessage

	self currentSelection
	ifNil: [^ nil].
	
	^ self getSourceCodeFromMessage: self currentSelection
	
	 