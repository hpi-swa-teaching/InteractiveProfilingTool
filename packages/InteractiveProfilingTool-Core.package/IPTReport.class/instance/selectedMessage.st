code browser
selectedMessage

	self currentSelection ifNil: [^ nil].
		
	^ self getSourceCodeFromMessage: self currentSelection