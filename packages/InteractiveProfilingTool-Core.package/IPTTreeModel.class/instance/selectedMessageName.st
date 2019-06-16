code browser
selectedMessageName

	self currentSelection ifNil: [^ nil].
	^ self currentSelection getSelector