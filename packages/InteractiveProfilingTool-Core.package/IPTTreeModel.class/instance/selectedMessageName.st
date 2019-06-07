code browser
selectedMessageName

	self currentSelection
	ifNil: [^ nil].
	
	^ self currentSelection method selector